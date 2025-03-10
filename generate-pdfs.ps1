# Define paths
$REPO_DIR = "."
$PDF_DIR = "$REPO_DIR\pdfs"

# Delete existing PDFs if the PDF directory exists
if (Test-Path -Path $PDF_DIR) {
    Write-Host "Clearing existing PDFs from $PDF_DIR"
    Get-ChildItem -Path $PDF_DIR -Filter "*.pdf" | Remove-Item -Force
} else {
    # Create PDF directory if it doesn't exist
    Write-Host "Creating PDF directory: $PDF_DIR"
    New-Item -ItemType Directory -Path $PDF_DIR | Out-Null
}

# Loop through each subject folder
Get-ChildItem -Path $REPO_DIR -Directory | ForEach-Object {
    $SUBJECT_DIR = $_.FullName
    $SUBJECT = $_.Name

    # Skip the PDF directory itself
    if ($SUBJECT -eq "pdfs") {
        Write-Host "Skipping PDF directory..."
        return
    }

    Write-Host "Processing subject: $SUBJECT"

    # Format subject name for title (e.g., "ap-biology" -> "AP Biology")
    $SUBJECT = $SUBJECT -replace "-", " "  # Replace hyphens with spaces
    $TextInfo = (Get-Culture).TextInfo
    $CLEAN_SUBJECT_NAME = $TextInfo.ToTitleCase($SUBJECT.ToLower())

    # Special case for "AP"
    $CLEAN_SUBJECT_NAME = $CLEAN_SUBJECT_NAME -replace '\bAp\b', 'AP'

    Write-Output "Formatted Subject Name: $CLEAN_SUBJECT_NAME"

    # Gather all unit notes (exclude README.md and resources.md)
    $FILES = Get-ChildItem -Path $SUBJECT_DIR -Recurse -Filter "*.md" |
             Where-Object { $_.Name -notin @("README.md", "resources.md") } |
             Sort-Object { [regex]::Replace($_.Name, '\d+', { $args[0].Value.PadLeft(20) }) }

    # Sort files based on their directory names (unit folders)
    $FILES = $FILES | Sort-Object { 
        $unitFolder = $_.DirectoryName.Split('\')[-2]  # Get the parent folder name (e.g., unit-1-limits)
        if ($unitFolder -match 'unit-(\d+)') { 
            return [int]$matches[1]  # Sort based on the numeric part of the unit name
        } else {
            return $_.Name  # Default sort alphabetically if no unit number is found
        }
    }

    if (-not $FILES) {
        Write-Host "No notes found for $SUBJECT. Skipping..."
        return
    }

    Write-Host "Found files for subject $SUBJECT"
    $FILES | ForEach-Object { Write-Host "  - $($_.FullName)" }

    # Output PDF filename
    $OUTPUT = Join-Path -Path $PDF_DIR -ChildPath "$CLEAN_SUBJECT_NAME.pdf"

    Write-Host "Generating PDF for subject $CLEAN_SUBJECT_NAME at $OUTPUT"

    # Run Pandoc without a custom template
    pandoc `
        --pdf-engine=xelatex `
        -V geometry:letterpaper `
        -V geometry:top=0.5in `
        -V geometry:bottom=0.7in `
        -V geometry:left=0.5in `
        -V geometry:right=0.5in `
        -V fontsize=11pt `
        -V mainfont="Calibri" `
        -V title="$CLEAN_SUBJECT_NAME Notes" `
        -V author="\cap imblestart, ($(Get-Date -Format 'MMM yyyy'))" `
        -o $OUTPUT $FILES.FullName `
        --variable=header-includes="
        \usepackage{fancyhdr}
        \fancyhf{} % Clear all header and footer fields
        \fancyfoot[C]{%
            \hrule % Add a horizontal rule above the footer
            \vspace{2pt} % Add a small vertical space
            \textit{$CLEAN_SUBJECT_NAME Notes} \hfill \thepage%
        }
        \renewcommand{\headrulewidth}{0pt} % Remove the header line
        \pagestyle{fancy}  " 
    if ($?) {
        Write-Host "Successfully generated PDF for subject $CLEAN_SUBJECT_NAME at $OUTPUT"
    } else {
        Write-Host "Failed to generate PDF for subject $CLEAN_SUBJECT_NAME. Check Pandoc/LaTeX installation."
    }
}

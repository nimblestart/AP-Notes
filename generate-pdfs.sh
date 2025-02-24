#!/bin/bash

# Define paths
REPO_DIR="."
PDF_DIR="$REPO_DIR/pdfs"

# Delete existing PDFs if the PDF directory exists
if [ -d "$PDF_DIR" ]; then
    echo "Clearing existing PDFs from $PDF_DIR"
    rm -f "$PDF_DIR"/*.pdf
else
    # Create PDF directory if it doesn't exist
    echo "Creating PDF directory: $PDF_DIR"
    mkdir -p "$PDF_DIR"
fi

# Loop through each subject folder
find "$REPO_DIR" -mindepth 1 -maxdepth 1 -type d | while read -r SUBJECT_DIR; do
    SUBJECT=$(basename "$SUBJECT_DIR")

    # Skip the PDF directory itself
    if [ "$SUBJECT" = "pdfs" ]; then
        echo "Skipping PDF directory..."
        continue
    fi

    echo "Processing subject: $SUBJECT"

    # Format subject name for title (e.g., "ap-biology" -> "AP Biology")
    CLEAN_SUBJECT_NAME=$(echo "$SUBJECT" | tr '-' ' ' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')

    # Special case for "AP"
    CLEAN_SUBJECT_NAME=$(echo "$CLEAN_SUBJECT_NAME" | sed 's/\bAp\b/AP/g')

    echo "Formatted Subject Name: $CLEAN_SUBJECT_NAME"

    # Gather all unit notes (exclude README.md and resources.md)
    FILES=$(find "$SUBJECT_DIR" -type f -name "*.md" ! -name "README.md" ! -name "resources.md" | sort -V)

    # Sort files based on their directory names (unit folders)
    FILES=$(echo "$FILES" | while read -r file; do
        unitFolder=$(dirname "$file" | xargs basename)
        if [[ "$unitFolder" =~ unit-([0-9]+) ]]; then
            echo "${BASH_REMATCH[1]}|$file"
        else
            echo "999|$file"  # Default sort alphabetically if no unit number is found
        fi
    done | sort -t'|' -k1,1n | cut -d'|' -f2)

    if [ -z "$FILES" ]; then
        echo "No notes found for $SUBJECT. Skipping..."
        continue
    fi

    echo "Found files for subject $SUBJECT"
    echo "$FILES" | while read -r file; do
        echo "  - $file"
    done

    # Output PDF filename
    OUTPUT="$PDF_DIR/$CLEAN_SUBJECT_NAME.pdf"

    echo "Generating PDF for subject $CLEAN_SUBJECT_NAME at $OUTPUT"

    # Run Pandoc without a custom template
    pandoc \
        --pdf-engine=xelatex \
        -V geometry:letterpaper \
        -V geometry:top=0.5in \
        -V geometry:bottom=0.7in \
        -V geometry:left=0.5in \
        -V geometry:right=0.5in \
        -V fontsize=11pt \
        -V mainfont="Roboto" \
        -V title="$CLEAN_SUBJECT_NAME Notes" \
        -V author="∩imblestart, ($(date +'%B %Y'))" \
        -o "$OUTPUT" $FILES \
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
    if [ $? -eq 0 ]; then
        echo "Successfully generated PDF for subject $CLEAN_SUBJECT_NAME at $OUTPUT"
    else
        echo "Failed to generate PDF for subject $CLEAN_SUBJECT_NAME. Check Pandoc/LaTeX installation."
    fi
done
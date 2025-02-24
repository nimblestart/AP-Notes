#!/bin/bash

REPO_DIR="AP-Notes"
PDF_DIR="$REPO_DIR/pdfs"

# Create PDF directory if missing
mkdir -p "$PDF_DIR"

for SUBJECT_DIR in "$REPO_DIR"/*/; do
  # Skip the PDF directory itself
  if [[ "$SUBJECT_DIR" == "$PDF_DIR/" ]]; then
    continue
  fi

  SUBJECT=$(basename "$SUBJECT_DIR")
  CLEAN_SUBJECT_NAME=$(echo "$SUBJECT" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')

  FILES=$(find "$SUBJECT_DIR" -name "*.md" ! -name "README.md" ! -name "resources.md" | sort -V)
  
  if [ -z "$FILES" ]; then
    echo "No notes found for $SUBJECT. Skipping..."
    continue
  fi
  
  OUTPUT="$PDF_DIR/$SUBJECT.pdf"
  
  pandoc \
    --pdf-engine=xelatex \
    --template=template.tex \
    -V geometry:letterpaper \
    -V geometry:margin=0.5in \
    -V fontsize=11pt \
    -V subject="$CLEAN_SUBJECT_NAME" \
    -V date="$(date +'%B %Y')" \
    -o "$OUTPUT" \
    $FILES
  
  echo "Generated PDF for $SUBJECT: $OUTPUT"
done
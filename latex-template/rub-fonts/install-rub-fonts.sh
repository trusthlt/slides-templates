#!/bin/bash

# We install the fonts locally into ~/.fonts/, not into /usr/share/fonts/truetype to avoid unnecessary sudo rights
DEST_DIR="${HOME}/.fonts/rub-flama"
mkdir -p $DEST_DIR

# There must be six *.ttf files
VARIANTS='RubFlama-Bold RubFlama-BoldItalic RubFlama-Italic RubFlama-Regular RubFlamaLight-Italic RubFlamaLight-Regular'

for VARIANT in $VARIANTS; do
  # Copy to the target dir
  cp "${VARIANT}.ttf" "${DEST_DIR}/${VARIANT}.ttf"
done

# Update font cache
fc-cache -fv

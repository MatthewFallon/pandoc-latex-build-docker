#!/bin/sh

	pandoc --data-dir=/var/lib/pandoc --template=eisvogel.latex --pdf-engine=xelatex --from markdown+yaml_metadata_block+smart+backtick_code_blocks+grid_tables --to pdf -o "${OUTPUT_NAME:-output}.pdf" $*
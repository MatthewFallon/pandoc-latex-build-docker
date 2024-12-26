# Pandoc Latex Build Docker Image

This is definitely not the first, and won't be the last docker image built on the spectacular template [eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) for converting Markdown files to PDF. This is to support my workflow of jekyllrb documentation sites that generates themselves with a link in PDF form included, so I will be keeping this functional and up to date. 

I mainly use this within github actions workflows to provide an environment with the minimum latex set up in advance for eisvogel, but have an entrypoint defined to accept a list of markdown files to combine in order to create an output pdf as well. The operative command in question being:

```bash
pandoc --data-dir=/var/lib/pandoc --template=eisvogel.latex --pdf-engine=xelatex --from markdown+yaml_metadata_block+smart+backtick_code_blocks+grid_tables --to pdf -o "${OUTPUT_NAME:-output}.pdf" $*
```

## Environment variables

- `OUTPUT_NAME` - default: `output` - Will determine the name of the pdf created.
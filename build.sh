#!/usr/bin/env bash

# build script for making the report pdf
# md -> pdf 
# requirements:
#   1. Needs mod.tex. Modified Latex Template
#   2. Needs title.md, draft.md in docs/
#       title.md = title page md
#       draft.md = draft of full report in md
# uses modified latex template:
#   1. added figure [H] to keep images in place
#   2. added \newpage line to be inserted after title block
#       allows sep title and TOC pages
# uses tango highlighting

pandoc -o report.pdf \
       --template docs/mod.tex \
       --highlight-style tango \
       docs/title.md docs/draft.md

#!/bin/bash

CURRENT_PATH=$(pwd)

winpty docker pull navikt/pdfgen:096d823096fb366a6a90dfeae4401d165dd7bbb6
winpty docker run \
        -v "/$CURRENT_PATH/templates:/app/templates" \
        -v "/$CURRENT_PATH/fonts:/app/fonts" \
        -v "/$CURRENT_PATH/data:/app/data" \
        -v "/$CURRENT_PATH/resources:/app/resources" \
        -p 8080:8080 \
        -e DISABLE_PDF_GET=false \
        -it \
        --rm \
        navikt/pdfgen

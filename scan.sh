#!/bin/bash

# default settings
# Normal quality
# PDF

OUT="${HOME}"

function _filename () {
  base_name=$(date +'%d-%m-%Y_%H-%M-%S')
  counter=""

  while true; do
    if [[ $counter == "" ]]
    then
      filename="scan_${base_name}$1"
    else
      filename="scan_${base_name}_${counter}$1"
    fi
    if [[ ! -e "$filename" ]]; then
      return $filename
    fi
    ((counter++))
  done
}

function A4_fast_pdf {
  _filename .pdf
  hp-scan --res=300 --size=a4 --dest=pdf --file=$OUT/$filename
}

function A4_hq_pdf {
  _filename .pdf
  hp-scan --res=2400 --size=a4 --dest=pdf --file=$OUT/$filename
}

function A4_fast_png {
  _filename .png
  hp-scan --res=300 --size=a4 --dest=pdf --file=$OUT/$filename
}

function A4_hq_png {
  _filename .png
  hp-scan --res=2400 --size=a4 --dest=pdf --file=$OUT/$filename
}


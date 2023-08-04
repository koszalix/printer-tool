#!/bin/bash

# default settings
# Normal quality
# PDF

function A4_fast_pdf() {
  hp-scan --res=300 --size=a4 --dest=pdf
}

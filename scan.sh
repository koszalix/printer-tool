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

#------------------------------------------------------------------------------+
# A3                                                                           |
#------------------------------------------------------------------------------+

function A3_fast_pdf {
  _filename .pdf
  hp-scan --res=300 --size=a3 --dest=pdf --file=$OUT/$filename
}

function A3_hq_pdf {
  _filename .pdf
  hp-scan --res=2400 --size=a3 --dest=pdf --file=$OUT/$filename
}

function A3_fast_png {
  _filename .png
  hp-scan --res=300 --size=a3 --file=$OUT/$filename
}

function A3_hq_png {
  _filename .png
  hp-scan --res=2400 --size=a3 --file=$OUT/$filename
}

#------------------------------------------------------------------------------+
# A4                                                                           |
#------------------------------------------------------------------------------+

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
  hp-scan --res=300 --size=a4 --file=$OUT/$filename
}

function A4_hq_png {
  _filename .png
  hp-scan --res=2400 --size=a4 --file=$OUT/$filename
}

#------------------------------------------------------------------------------+
# A5                                                                           |
#------------------------------------------------------------------------------+

function A5_fast_pdf {
  _filename .pdf
  hp-scan --res=300 --size=a5 --dest=pdf --file=$OUT/$filename
}

function A5_hq_pdf {
  _filename .pdf
  hp-scan --res=2400 --size=a5 --dest=pdf --file=$OUT/$filename
}

function A5_fast_png {
  _filename .png
  hp-scan --res=300 --size=a5 --file=$OUT/$filename
}

function A5_hq_png {
  _filename .png
  hp-scan --res=2400 --size=a5 --file=$OUT/$filename
}

#------------------------------------------------------------------------------+
# A6                                                                           |
#------------------------------------------------------------------------------+

function A6_fast_pdf {
  _filename .pdf
  hp-scan --res=300 --size=a6 --dest=pdf --file=$OUT/$filename
}

function A6_hq_pdf {
  _filename .pdf
  hp-scan --res=2400 --size=a6 --dest=pdf --file=$OUT/$filename
}

function A6_fast_png {
  _filename .png
  hp-scan --res=300 --size=a6 --file=$OUT/$filename
}

function A6_hq_png {
  _filename .png
  hp-scan --res=2400 --size=a6 --file=$OUT/$filename
}

#------------------------------------------------------------------------------+
# B4                                                                           |
#------------------------------------------------------------------------------+

function B4_fast_pdf {
  _filename .pdf
  hp-scan --res=300 --size=b4 --dest=pdf --file=$OUT/$filename
}

function B4_hq_pdf {
  _filename .pdf
  hp-scan --res=2400 --size=b4 --dest=pdf --file=$OUT/$filename
}

function B4_fast_png {
  _filename .png
  hp-scan --res=300 --size=b4 --file=$OUT/$filename
}

function B4_hq_png {
  _filename .png
  hp-scan --res=2400 --size=b4 --file=$OUT/$filename
}

#------------------------------------------------------------------------------+
# B5                                                                           |
#------------------------------------------------------------------------------+

function B5_fast_pdf {
  _filename .pdf
  hp-scan --res=300 --size=b5 --dest=pdf --file=$OUT/$filename
}

function B5_hq_pdf {
  _filename .pdf
  hp-scan --res=2400 --size=b5 --dest=pdf --file=$OUT/$filename
}

function B5_fast_png {
  _filename .png
  hp-scan --res=300 --size=b5 --file=$OUT/$filename
}

function B5_hq_png {
  _filename .png
  hp-scan --res=2400 --size=b5 --file=$OUT/$filename
}

#------------------------------------------------------------------------------+
# PFOTO                                                                        |
#------------------------------------------------------------------------------+
function 5x7_hq_png {
  _filename .png
  hp-scan --res=2400 --size=5x7 --file=$OUT/$filename 
}

function 3x5_hq_png {
  _filename .png
  hp-scan --res=2400 --size=3x5 --file=$OUT/$filename 
}

function 4x6_hq_png {
  _filename .png
  hp-scan --res=2400 --size=4x6 --file=$OUT/$filename 
}

function photo_hq_png {
  _filename .png
  hp-scan --res=2400 --size=photo --file=$OUT/$filename 
}

#------------------------------------------------------------------------------+
# USER INTERFACE                                                               |
#------------------------------------------------------------------------------+

HEIGHT=40
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Scanner utility" 

function main_menu {
  OPTIONS=(1 "CUSTOM"
           2 "A4_FAST PDF" 
           3 "A4_FAST PNG" 
           4 "A4_HQ PDF"   
           5 "A4_HQ PNG"   
           6 "A3_FAST PDF" 
           7 "A3_FAST PNG" 
           8 "A3_HQ PDF"   
           9 "A3_HQ PNG"   
           10 "A5_FAST PDF"
           11 "A5_FAST PNG"
           12 "A5_HQ PDF"
           13 "A5_HQ PNG"
           14 "A6_FAST PDF"
           15 "A6_FAST PNG"
           16 "A6_HQ PDF"
           17 "A6_HQ PNG"
           18 "B4_FAST PDF" 
           19 "B4_FAST PNG" 
           20 "B4_HQ PDF"   
           21 "B4_HQ PNG"   
           22 "B3_FAST PDF" 
           23 "B3_FAST PNG" 
           24 "B3_HQ PDF"   
           25 "B3_HQ PNG"   
           26 "B5_FAST PDF"
           27 "B5_FAST PNG"
           28 "B5_HQ PDF"
           29 "B5_HQ PNG"
           30 "5x7_HQ PNG"
           31 "4x6_HQ PNG"
           32 "3x5_HQ PNG"
           33 "PHOTO_HQ PNG")

  CHOICE=$(dialog --clear \
                  --backtitle "$BACKTITLE" \
                  --title "" \
                  --menu "Select scanner mode" \
                  $HEIGHT $WIDTH $CHOICE_HEIGHT \
                  "${OPTIONS[@]}" \
                  2>&1 >/dev/tty)
 clear 
}

function parse_choise {



}

main_menu 
 












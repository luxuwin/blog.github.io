#!/bin/bash

# scale all jpg files to 1440(width) and remove meta data
# https://www.imagemagick.org/script/command-line-processing.php#geometry
# execute it in the folder
find ./assets/images -iname "*.jpg" -execdir mogrify -format jpg -scale 1440 -strip {} \;
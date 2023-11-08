#!/bin/bash

for file in ./BU_e_RDV/*.zip; do
	mkdir extracted
        # Extract the two specific files from the zip file
        unzip -o -j "$file" "*.bu" "*.logjez" -d $PWD/extracted/ -y

done

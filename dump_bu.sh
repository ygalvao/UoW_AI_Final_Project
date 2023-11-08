#!/bin/bash

#*******************************************************************************#
#                                                                               #
# Written by Yuri H. Galvao <yuri@galvao.ca>, January 2022                      #
#                                                                               #
#*******************************************************************************#

files_dir="./BU_e_RDV/extracted/"
i=0

for file in $files_dir*.bu
do
	# Uses ASN.1 tools to dump the data from the BU files into a readable flat file
	python bu_dump.py -a bu.asn1 -b "$file" > "$file.txt"

	# Deletes the .bu file, as it is no longer necessary
        rm "$file"
        ((i++))
                if [[ "$i" == '37523' ]]
                then
                        break
                fi
        echo "$i iteration"

done

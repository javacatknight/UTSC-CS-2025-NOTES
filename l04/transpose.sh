#!/bin/bash
#DATE: 6/3/2022
#DESCRIPTION: for a given directory $src, this script reorganizes its first layer and second layer of subdirectories and switches them, placing this at target path $tgt 
#EXAMPLE In $src folder, 2017:  b63  make a folder b63, recursively copy b63, and rename the folder to 2017 parent folder's name.

#BEGIN:

#CHECK VALID ARGUMENTS, ELSE POST STDERR
if [ $# -lt 2 ]; then
        #write to stderr and exit with exit code 1
        echo "Not enough args." >&2
        exit 1
fi

src="$1"
tgt="$2"

if [ -d "$tgt" ] ; then
        #write to sterr exit with exit code 2
        echo "directory exists already." >&2
        exit 2
else
        mkdir "$tgt"
fi

#BEGIN REORGANIZING THE DIRECTORIES.
for i in "$src"/*/ ; do
echo flag
        for q in "$i"/*/ ; do
                if [ ! -d "$tgt/$(basename "$q")" ] ; then                                       #CHECK DIRECTORY EXISTENCE.
                        mkdir "$tgt/$(basename "$q")"
                fi
                cp -r "$q" "$tgt/$(basename "$q")" #try turn these doublre quotes to swingle                                             #recursively copies the dir>                mv "$tgt/$(basename "$q")/$(basename "$q")" "$tgt/$(basename "$q")/$(basename "$i")"                    #rename
        done
done


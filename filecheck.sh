#!/bin/bash
echo "what is the file name"
read filename
if [ -f "$filename" ]
then
        echo "file is present"
else
        touch $filename
        echo "the file is present now" > $filename
fi

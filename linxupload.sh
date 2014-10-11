#!/bin/sh
for ARG in "$@"
do
    URL=$(curl -s -F Filedata=@$ARG https://linx.li/upload/public)
    echo $URL
done


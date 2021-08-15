#!/bin/bash

#set -o nounset -o errexit -o pipefail
JSON=`cat getlist.json`

echo "-- row json --"
echo "$JSON"
echo "--------------"

convert () {
    echo "$1 -> $2"
    ffmpeg -y -loglevel 28 -framerate 60 -i $1 -vframes 1 -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -vcodec libx264 -pix_fmt yuv420p -t 2.0 -loop 1 -r 60 $2 < /dev/null
    
}

while read -r data
do
    echo "======"
    echo JSON: $data
    echo "------"

    name=$(jq -r ".name" <<<"$data")
    filename=${name%.*}.mp4
    url=$(jq -r ".url" <<<"$data")

    echo Image File: "$name"
    echo Video File: "$filename"
    echo URL: "$url"
    
    curl -sS -L --url "$url" > "$name"
    if [ -e "$name" ];then
        echo "$name downlaod."
    fi

    convert "$name" "$filename"

    if [ -e "$filename" ];then
        echo "$filename convert."
    fi
    echo ""
done < <(jq -c ".[]" <<<"$JSON")

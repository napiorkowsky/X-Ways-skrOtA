#!/bin/bash
FILES=`pwd`/Lista-plików*
for f in $FILES
do
  echo "Converting file $f "
  sed -i 's/^<th>Skr&#x00F3;t&#x0105;<\/th>/<th>MD5<\/th>/g' "$f"
  sed -i 's/^<th>Skr&#x00F3;t&#x02DB;<\/th>/<th>SHA1<\/th>/g' "$f"
  sed -i 's/^<font class="RTfield">Skr&#x00F3;t&#x0105;<\/font>:/<font class="RTfield">MD5<\/font>:/g' "$f"
  sed -i 's/^<font class="RTfield">Skr&#x00F3;t&#x02DB;<\/font>:/<font class="RTfield">SHA1<\/font>:/g' "$f"
done

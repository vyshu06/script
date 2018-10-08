#!/bin/bash
echo "enter repo name"
read var
echo "repo name:" $var
url=$var
basename=$(basename $url)
filename=${basename%.*}
echo $filename
if [ ! -d "$filename" ] 
then
git clone $var
cd $filename/
d=$(ls -lR | grep ^d | wc -l)
echo "number of directories:" $d
f=$(git ls-files | wc -l)
echo "number of files:" $f
else
	echo "Previously cloned"
	cd $filename/
d=$(ls -lR | grep ^d | wc -l)
echo "number of directories:" $d
f=$(git ls-files | wc -l)
echo "number of files:" $f
	exit
fi



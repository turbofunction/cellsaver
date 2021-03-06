#!/bin/bash

echo -n "Enter 'y' if you set the date text: "
read date_check

if  [ "$date_check" != "y" ]; then
	exit 1
fi

proj="lipovsky-power"

zip_file="$proj-P3.zip"

rm -f $zip_file

zip $zip_file \
    $proj.boardoutline.ger \
    $proj.toplayer.ger \
    $proj.internalplane1.ger \
    $proj.internalplane2.ger \
    $proj.bottomlayer.ger \
    $proj.topsoldermask.ger \
    $proj.bottomsoldermask.ger \
    $proj.topsilkscreen.ger \
    $proj.bottomsilkscreen.ger \
    $proj.drills.xln \
    $proj.drills.dri \
    $proj.dri \
    $proj.drl \
    $proj.tcream.ger \
    README-$proj.txt

echo "$zip_file created"

rm $proj.*.ger $proj.*.gpi $proj.drills.* $proj.dri $proj.drl

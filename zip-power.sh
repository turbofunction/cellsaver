#!/bin/sh

proj="lipovsky-power"

zip_file="$proj-P1.zip"

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

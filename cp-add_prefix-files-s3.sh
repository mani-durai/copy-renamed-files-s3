#!/bin/bash
prefix=
source=s3://src_bucket/images
destination=s3://dest_bucket/dest_images
files=`aws s3 ls $source/ | awk '{print $4}'`
for f in $files;do
 aws s3 cp $source/$f $destination/$prefix_$f
done

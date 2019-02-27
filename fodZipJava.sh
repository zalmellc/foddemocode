#!/bin/sh

#
# Simple Java ZIP Files and Jars for upload to FOD.
#

if [ "$#" -gt 1 ]; 
then

APP_SOURCE_DIR=$1
APP_JAR_DIR=$2

mkdir tmp_fodupload

for appfiles in `find ${APP_SOURCE_DIR} -type f -exec file {} \; | grep "ASCII text" | cut -d: -f1`
do
  cp $appfiles tmp_fodupload
done

for jar_files in `find ${APP_JAR_DIR} -name "*.jar" `
do
  cp ${jar_files} tmp_fodupload
done

zip -r tmp_fodupload.zip tmp_fodupload

else

echo "usage fodZipJava <App Source Dir> <App Jar Dir>"

fi

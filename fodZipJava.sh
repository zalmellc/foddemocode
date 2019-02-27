#!/bin/sh

# Change below to point to you FodUpload.jar path if not in current directory.
FOD_UPLOAD_JAR=FodUpload.jar

if [ "$#" -gt 1 ]; 
then

APP_SOURCE_DIR=$1
APP_JAR_DIR=$2

for java_src in `find ${APP_SOURCE_DIR} -name "*.java" `
do
   zip -ur fod_java.zip ${java_src}

done

for jar_files in `find ${APP_JAR_DIR} -name "*.jar" `
do
   zip -ur fod_java.zip ${jar_files}

done

else

echo "usage fodZipJava <App Source Dir> <App Jar Dir>"

fi

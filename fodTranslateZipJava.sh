#!/bin/sh

if [ "$#" -gt 1 ]; 
then

APP_SOURCE_DIR=$1
APP_JAR_DIR=$2

mkdir tmp_scajars
for jar_files in `find ${APP_JAR_DIR} -name "*.jar" `
do
  cp ${jar_files} tmp_scajars
done

# Uncomment if this is there is only one source dir and fresh start.
# sourceanalyzer -b fodTranslate -clean

sourceanalyzer -b fodTranslate -verbose -logfile fodTranslate.log ${APP_SOURCE_DIR} -extdirs tmp_scajars
sourceanalyzer -b fodTranslate -make-mobile
sourceanalyzer -b fodTranslate -export-build-session fodTranslate.mbs
zip fodTranslate.zip fodTranslate.mbs

else

echo "usage fodZipJava <App Source Dir> <App Jar Dir>"

fi

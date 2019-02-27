#!/bin/sh

# Change below to point to you FodUpload.jar path if not in current directory.
FOD_UPLOAD_JAR=FodUpload.jar

if [ "$#" -gt 2 ]; 
then

if [ ! -f "${FOD_UPLOAD_JAR}" ];
then
  echo "FOD Upload Jar not found at: (${FOD_UPLOAD_JAR}) !"
  exit -99
fi

FOD_API_AUTH=$1
APP_SOURCE_ZIP=$2
FOD_BSI_TOKEN=$3

echo "Running: java -jar ${FOD_UPLOAD_JAR} -apiCredentials ${FOD_API_AUTH} -zipLocation ${APP_SOURCE_ZIP} -entitlementPreference 2 -bsi ${FOD_BSI_TOKEN}"

java -jar ${FOD_UPLOAD_JAR} -apiCredentials ${FOD_API_AUTH} -zipLocation ${APP_SOURCE_ZIP} -entitlementPreference 2 -bsi ${FOD_BSI_TOKEN}

else

echo "usage fodUpload.sh <FOD API Credentials> <APP_SOURCE_DIR> <APP_JARS_DIR> <BSI TOKEN>"
echo "Example: "
echo "fodUpload.sh "jdekllkdlwjwjwjw-s-s1b0-94ac4fa6065f edkjh2kD@ddjdkNzRUNxZ0hhV2o6dzIicVBsSFc20" webgoat.zip eyJ0ZW5hbnRJZCI6MTIxOSwidGVuYW50Q29kZSI6ImZvcnRpZnlfemwiLCJyZWxlYXNlSWQiOjQyODEsInBheWxvYWRUeXBlIjoiQU5BTFlTSVNfUEFZTE9BRCIsImFzc2Vzc21lbnRUeXBlSWQiOjMxLCJ0ZWNobm9sb2d5VHlwZSI6IkpBVkEvSjJFRSisjljsasajljslakjslkajlskjalkjslakjslkjalkjslakji2oj281uoijh1oijoqwijodiwqhoiuwhc92joiqhoiwh"

fi

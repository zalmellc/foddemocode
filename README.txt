
This GIT Directory has demo code for FOD:

1.) fodUpload.sh - script to upload to FOD using a few arguments
2.) fodTranslateZiJava.sh - script to zip source and jars translated with SCA.
3.) FodUpload.jar - Runnable Jar that uploads packages to FOD.

There is usage info on each in the scripts *.sh.


This fodUpload.sh script simplifies the upload process by taking just three arguments:

NOTE: You must make sure the PATH to the fodUpload.jar is correct in the script.

./fodUpload.sh 

usage fodUpload.sh <FOD API Credentials> <APP_SOURCE_DIR> <APP_JARS_DIR> <BSI TOKEN>

NOTE: The FOD API Credentials are two strings one is the API Key and the other is the secret key.  The two strings are separated by one space.

The FOD Admin for your team will provide the API Credentials for your app.

Example: 

fodUpload.sh jdekllkdlwjwjwjw-s-s1b0-94ac4fa6065f edkjh2kD@ddjdkNzRUNxZ0hhV2o6dzIicVBsSFc20 webgoat.zip eyJ0ZW5hbnRJZCI6MTIxOSwidGVuYW50Q29kZSI6ImZvcnRpZnlfemwiLCJyZWxlYXNlSWQiOjQyODEsInBheWxvYWRUeXBlIjoiQU5BTFlTSVNfUEFZTE9BRCIsImFzc2Vzc21lbnRUeXBlSWQiOjMxLCJ0ZWNobm9sb2d5VHlwZSI6IkpBVkEvSjJFRSisjljsasajljslakjslkajlskjalkjslakjslkjalkjslakji2oj281uoijh1oijoqwijodiwqhoiuwhc92joiqhoiwh

Authenticating
Beginning upload
Upload Status - Bytes sent:5242880
Upload Status - Bytes sent:10485760
Upload Status - Bytes sent:11466480
Scan 1877 uploaded successfully. Total bytes sent: 11466480

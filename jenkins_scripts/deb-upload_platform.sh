#!/bin/bash
set -x
location=$1
project=$2
deb_dir=""

if [ "$project" == "conduit" ] ; then
     deb_dir=databus-dist/target
else
deb_dir=messaging-client-dist/target
#exit 0
fi

full_path=$location/$deb_dir
cd $full_path
echo $full_path
echo "uploading the debian NOW"
build-upload *.deb

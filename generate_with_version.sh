#!/bin/bash
MODULENAME=jquery-cookie
VERSION="1.4.1"
URL="https:\/\/github.com\/carhartl\/jquery-cookie"
REPONAME=$MODULENAME
DOWNLOAD_URL=http://github.com/carhartl/$REPONAME/archive/v$VERSION.zip
rm -rf $REPONAME-*
curl -L -O $DOWNLOAD_URL
unzip v$VERSION.zip
mv $REPONAME-$VERSION/jquery.cookie.js $MODULENAME.js
echo $VERSION
for var in README.md kanso.json
do
  sed -e s/@VERSION@/$VERSION/g \
      -e s/@MODULENAME@/$MODULENAME/g \
      -e s/@URL@/$URL/g \
             $var.in > $var 
done
rm -rf v*.zip $REPONAME-$VERSION 

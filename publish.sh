#!/bin/bash
MODULENAME=jquery-cookie
CWD=`pwd`
./generate_with_version.sh
PUBLISHDIR=${CWD}/publish
rm -rf ${PUBLISHDIR}
mkdir ${PUBLISHDIR} 
cp README.md kanso.json $MODULENAME.js ${PUBLISHDIR} 
cd ${PUBLISHDIR}
kanso publish
cd ${CWD} 
rm -rf ${PUBLISHDIR} 


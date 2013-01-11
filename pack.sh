#!/bin/sh

# Create gzipped tar-balls for all sub-directories.
#
# Author:   Pontus Stenetorp    <pontus stenetorp se>
# Version:  2013-01-11

SCRIPT_DIR=`dirname ${0}`

for dir in `find ${SCRIPT_DIR}/* -maxdepth 1 -type d`
do
    tar -c -z -C ${SCRIPT_DIR} -f ${dir}.tar.gz ${dir}
done

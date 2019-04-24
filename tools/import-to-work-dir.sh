#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo $SCRIPTPATH

cp -r $SCRIPTPATH/Customized/Papirus/ $SCRIPTPATH/work/

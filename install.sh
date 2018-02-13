#!/bin/sh
mkdir $OPENGROK_INSTANCE_BASE
mkdir $OPENGROK_INSTANCE_BASE/data
mkdir $OPENGROK_INSTANCE_BASE/etc

OG_VERSION=1.0
wget https://github.com/oracle/opengrok/releases/download/${OG_VERSION}/opengrok-${OG_VERSION}.tar.gz
ls -al
pwd
tar xvf opengrok-${OG_VERSION}.tar.gz
rm opengrok-${OG_VERSION}.tar.gz
mv opengrok-* opengrok
cd /opengrok/bin
./OpenGrok deploy

#!/bin/bash
echo 
if !(type "/opt/bin/recpt1" > /dev/null 2>&1); then
  apt-get update
  apt-get install -y --reinstall ca-certificates
  apt-get install -y --no-install-recommends git autoconf automake build-essential 

  cd /tmp
  git clone https://github.com/stz2012/recpt1.git
  cd recpt1/recpt1
  ./autogen.sh
  ./configure --enable-b25 --prefix /opt
  make
  mkdir /opt/bin
  make install
fi
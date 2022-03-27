#!/bin/bash
set -o verbose
set -x

pushd ../scclib
rm -rf docs/*
doxygen doxygen.conf
popd
rm -rf scclib-doxygen/*
cp -r ../scclib/docs/html/* scclib-doxygen/
mkdir scclib-doxygen/lic
cp ../scclib/lic/* scclib-doxygen/lic/

pushd ../scclib-sqlite
rm -rf docs/*
doxygen doxygen.conf
popd
rm -rf scclib-sqlite-doxygen/*
cp -r ../scclib-sqlite/docs/html/* scclib-sqlite-doxygen/
mkdir scclib-sqlite-doxygen/lic
cp ../scclib-sqlite/lic/* scclib-sqlite-doxygen/lic/

set -x
echo 'best bet is git add -u followed by git add *'
printf '\xf0\x9f\x99\x82\n'

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

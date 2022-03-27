#!/bin/bash
set -o verbose

rm -rf scclib-doxygen/*
cp -r ../scclib/docs/html/* scclib-doxygen/
mkdir scclib-doxygen/lic
cp ../scclib/lic/* scclib-doxygen/lic/

rm -rf scclib-sqlite-doxygen/*
cp -r ../scclib-sqlite/docs/html/* scclib-sqlite-doxygen/
mkdir scclib-sqlite-doxygen/lic
cp ../scclib-sqlite/lic/* scclib-sqlite-doxygen/lic/

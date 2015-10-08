#!/bin/sh

rm  ${1}_*

cd ${1}-1.0
dpkg-buildpackage -uc -tc

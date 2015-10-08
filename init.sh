#!/bin/sh

apt-get install --yes build-essential debhelper dh-make quilt fakeroot lintian

export EMAIL="stotz@amxa.ch"
export DEBFULLNAME="Basil Stotz"


mkdir ${1}-1.0
cd ${1}-1.0
dh_make --createorig --indep

mkdir essentials
#mv debian/{changelog,compat,rules,control} essentials
cp debian/changelog essentials
cp debian/compat essentials
cp debian/rules essentials
cp debian/control essentials

mv debian debian.ori
mv essentials debian
cd debian
sed -i  's/1.0-1/1.0/'  changelog

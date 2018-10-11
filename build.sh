#!/bin/sh

cd buildroot
make BR2_EXTERNAL=../minipi raspberrypi_defconfig
make sdk
make

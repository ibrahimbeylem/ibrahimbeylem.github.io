#!/bin/bash
read paket

echo paketleniyor
dpkg-deb -b $paket
echo paketlendi
echo md5 sha1 ve sha256 değerleri alınıyor
md5=$( md5sum $paket.deb )
sha1=$( sha1sum $paket.deb )
sha256=$( sha256sum $paket.deb )
echo md5: $md5 
echo sha1: $sha1 
echo sha256: $sha256
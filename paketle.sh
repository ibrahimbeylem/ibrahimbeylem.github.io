#!/bin/bash
for paket in debs/com*
do
    if [ -d "$paket" ]
    then
      echo
      echo .-.-.-.-.-.-.-.-Paket-.-.-.-.-.-.-.-.-.
      echo
      echo $paket Paketleniyor
      dpkg-deb -b $paket
      echo $paket Paketlendi
      echo 
    fi
done
echo .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

echo
echo
if [[ -f "Packages" ]]; then
    echo Packages siliniyor
    rm Packages
    echo Packages silindi
fi


if [[ -f "Packages.bz2" ]]; then
    echo Packages.bz2 siliniyor
    rm Packages.bz2
    echo Packages.bz2 silindi
fi
echo
echo

echo Packages oluşturuluyor
echo ———————————————————
./dpkg-scanpackages debs /dev/null > Packages 
echo ———————————————————
bzip2 -k Packages
echo Packages oluşturuldu
echo
echo
echo            işlem bitti
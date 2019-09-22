for dosya in *.m4r
do
    if [ -f "$dosya" ]
    then
         echo  ${dosya%.m4r} klasörü oluşturuluyor 
         mkdir ${dosya%.m4r}
         echo DEBİAN Klasörü oluşturuluyor
         mkdir ${dosya%.m4r}/DEBIAN
         echo Library Klasörü oluşturuluyor
         mkdir ${dosya%.m4r}/Library
         echo Ringtones Klasörü oluşturuluyor
         mkdir ${dosya%.m4r}/Library/Ringtones
         echo Zil Sesi taşınıyor
         cp $dosya ${dosya%.m4r}/Library/Ringtones/$dosya
         echo control dosyası kopyalanıyor
         cp control ${dosya%.m4r}/DEBIAN/control
         sed -i 's/xxxxxx/'${dosya%.m4r}' Zil Sesi/' ${dosya%.m4r}/DEBIAN/control
         boyut=$(du $dosya)
         boyut=$(echo $boyut | sed 's/.'$dosya'//')
         sed -i 's/boyut/'$boyut'/' ${dosya%.m4r}/DEBIAN/control
    fi
done
echo dosya ismi
read dosya
ffmpeg -i $dosya ${dosya%.mp3}.m4a
#!/bin/bash
echo "FFFFFFF       FFFFFFF        SSSSS        UU   UU       KK  KK       IIIII "
echo "FF            FF            SS            UU   UU       KK KK         III  "
echo "FFFF          FFFF           SSSSS        UU   UU       KKKK          III  "
echo "FF            FF                 SS       UU   UU       KK KK         III  "
echo "FF            FF             SSSSS         UUUUU        KK  KK       IIIII "
echo ""
echo "BBBBB               SSSSS  EEEEEEE KK  KK   AAA   IIIII     IIIII DDDDD    "
echo "BB   B  yy   yy    SS      EE      KK KK   AAAAA   III       III  DD  DD   "
echo "BBBBBB  yy   yy     SSSSS  EEEEE   KKKK   AA   AA  III       III  DD   DD  "
echo "BB   BB  yyyyyy         SS EE      KK KK  AAAAAAA  III  ...  III  DD   DD  "
echo "BBBBBB       yy     SSSSS  EEEEEEE KK  KK AA   AA IIIII ... IIIII DDDDDD   "
echo "         yyyyy                                                             "
echo ""
echo "Make Hardsub Its Easy!"
echo "https://github.com/sekai-id/FFSUKI"
echo "Version DEV 2020-03-04"
echo ""
echo ""
read -p "Input Your Name / Your Fansub Name: " fansub
echo ""
echo "----------------------------------------------------------------"
echo "Choose Video Format"
echo "----------------------------------------------------------------"
echo "[1] x264"
echo "[2] x265"
echo "[3] VP9"
echo "[4] AV1 (Experimental)"
echo ""
read -p "Please Select A Number: " vid
echo ""
echo "----------------------------------------------------------------"
echo "Choose Resolution"
echo "----------------------------------------------------------------"
echo "[1] nHD (640x360)"
echo "[2] qHD (960x540)"
echo "[3] HD (1280x720)"
echo "[4] FHD (1920x1080)"
echo "[5] 2K DCI (2048x1080)"
echo "[6] WQHD (2560x1440)"
echo "[7] UHD (3840x2160)"
echo "[8] 4k DCI (4096x2160)"
echo ""
read -p "Please Select A Number: " res
echo ""
echo "----------------------------------------------------------------"
echo "Choose Quality"
echo "----------------------------------------------------------------"
echo "[1] High Quality"
echo "[2] Medium Quality"
echo "[3] Low Quality"
echo "[4] Very Low Quality"
echo ""
read -p "Please Select A Number: " qua
echo ""

# x264
# nHD
if [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 2250k -c:a aac -b:a 384k ${i%.*}.mp4;
    crc=`crc32 ${i%.*}.mp4`;
    mv ${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 1125k -c:a aac -b:a 256k ${i%.*}.mp4;
    crc=`crc32 ${i%.*}.mp4`;
    mv ${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 562k -c:a aac -b:a 128k ${i%.*}.mp4;
    crc=`crc32 ${i%.*}.mp4`;
    mv ${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 281k -c:a aac -b:a 128k ${i%.*}.mp4;
    crc=`crc32 ${i%.*}.mp4`;
    mv ${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[${crc^^}].mp4;
    done
    
else
    echo "Error: option not available"
fi
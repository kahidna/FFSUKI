#!/bin/bash
echo "FFFFFFF    FFFFFFF     SSSSS     UU   UU    KK  KK    IIIII "
echo "FF         FF         SS         UU   UU    KK KK      III  "
echo "FFFF       FFFF        SSSSS     UU   UU    KKKK       III  "
echo "FF         FF              SS    UU   UU    KK KK      III  "
echo "FF         FF          SSSSS      UUUUU     KK  KK    IIIII "
echo ""
echo "Make Hardsub Its Easy!"
echo "https://github.com/sekaidotid/FFSUKI"
echo "Version : 0.3"
echo ""
echo "Copyright SEKAI.ID (https://sekai.id)"
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
# nHD (640x360)
if [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 1125k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 562k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 281k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 112k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x264]-[${crc^^}].mp4;
    done

# x264
# qHD (960x540)

elif [[ "$vid" == "1" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 2531k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 1265k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 632k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 253k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x264]-[${crc^^}].mp4;
    done

# x264
# HD (1280x720)

elif [[ "$vid" == "1" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 4500k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 2250k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 1125k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 450k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x264]-[${crc^^}].mp4;
    done

# x264
# FHD (1920x1080)

elif [[ "$vid" == "1" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 10125k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 5062k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 2531k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 1012k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x264]-[${crc^^}].mp4;
    done

# x264
# 2K DCI (2048x1080)

elif [[ "$vid" == "1" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 10800k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 5400k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 2700k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 2K DCI (2048x1080))"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 1080k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x264]-[${crc^^}].mp4;
    done

# x264
# WQHD (2560x1440)

elif [[ "$vid" == "1" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 14250k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 7125k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 3562k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 1425k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x264]-[${crc^^}].mp4;
    done

# x264
# UHD (3840x2160)

elif [[ "$vid" == "1" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 40500k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 20250k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 10125k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 4050k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x264]-[${crc^^}].mp4;
    done

# x264
# 4k DCI (4096x2160)

elif [[ "$vid" == "1" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 43200k -c:a aac -b:a 384k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 21600k -c:a aac -b:a 256k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 10800k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x264]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "1" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x264"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx264 -preset veryslow -b:v 4320k -c:a aac -b:a 128k ffsuki-x264-${i%.*}.mp4;
    crc=`crc32 ffsuki-x264-${i%.*}.mp4`;
    mv ffsuki-x264-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x264]-[${crc^^}].mp4;
    done

# ----------------------------------------------------------------
# ----------------------------------------------------------------
# ----------------------------------------------------------------
# ----------------------------------------------------------------

# x265
# nHD (640x360)
elif [[ "$vid" == "2" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 1125k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 562k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 281k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 112k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[nHD]-[x265]-[${crc^^}].mp4;
    done

# x265
# qHD (960x540)

elif [[ "$vid" == "2" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 2531k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 1265k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 632k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 253k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[qHD]-[x265]-[${crc^^}].mp4;
    done

# x265
# HD (1280x720)

elif [[ "$vid" == "2" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 4500k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 2250k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 1125k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 450k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[HD]-[x265]-[${crc^^}].mp4;
    done

# x265
# FHD (1920x1080)

elif [[ "$vid" == "2" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 10125k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 5062k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 2531k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 1012k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[FHD]-[x265]-[${crc^^}].mp4;
    done

# x265
# 2K DCI (2048x1080)

elif [[ "$vid" == "2" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 10800k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 5400k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 2700k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 2K DCI (2048x1080))"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 1080k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[2K-DCI]-[x265]-[${crc^^}].mp4;
    done

# x265
# WQHD (2560x1440)

elif [[ "$vid" == "2" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 14250k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 7125k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 3562k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 1425k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[WQHD]-[x265]-[${crc^^}].mp4;
    done

# x265
# UHD (3840x2160)

elif [[ "$vid" == "2" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 40500k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 20250k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 10125k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 4050k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[UHD]-[x265]-[${crc^^}].mp4;
    done

# x265
# 4k DCI (4096x2160)

elif [[ "$vid" == "2" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 43200k -c:a aac -b:a 384k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 21600k -c:a aac -b:a 256k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 10800k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x265]-[${crc^^}].mp4;
    done

elif [[ "$vid" == "2" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : x265"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libx265 -preset veryslow -b:v 4320k -c:a aac -b:a 128k ffsuki-x265-${i%.*}.mp4;
    crc=`crc32 ffsuki-x265-${i%.*}.mp4`;
    mv ffsuki-x265-${i%.*}.mp4 [${fansub^^}]-${i%.*}-[4k-DCI]-[x265]-[${crc^^}].mp4;
    done

# ----------------------------------------------------------------
# ----------------------------------------------------------------
# ----------------------------------------------------------------
# ----------------------------------------------------------------

# VP9
# nHD (640x360)
elif [[ "$vid" == "3" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 1125k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[nHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 562k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[nHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 281k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[nHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "1" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : nHD (640x360)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=640:360,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 112k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[nHD]-[VP9]-[${crc^^}].webm;
    done

# VP9
# qHD (960x540)

elif [[ "$vid" == "3" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 2531k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[qHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 1265k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[qHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 632k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[qHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "2" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : qHD (960x540)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=960:540,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 253k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[qHD]-[VP9]-[${crc^^}].webm;
    done

# VP9
# HD (1280x720)

elif [[ "$vid" == "3" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 4500k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[HD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 2250k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[HD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 1125k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[HD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "3" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : HD (1280x720)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1280:720,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 450k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[HD]-[VP9]-[${crc^^}].webm;
    done

# VP9
# FHD (1920x1080)

elif [[ "$vid" == "3" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 10125k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[FHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 5062k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[FHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 2531k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[FHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "4" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : FHD (1920x1080)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=1920:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 1012k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[FHD]-[VP9]-[${crc^^}].webm;
    done

# VP9
# 2K DCI (2048x1080)

elif [[ "$vid" == "3" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 10800k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[2K-DCI]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 5400k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[2K-DCI]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 2K DCI (2048x1080)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 2700k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[2K-DCI]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "5" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 2K DCI (2048x1080))"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2048:1080,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 1080k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[2K-DCI]-[VP9]-[${crc^^}].webm;
    done

# VP9
# WQHD (2560x1440)

elif [[ "$vid" == "3" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 14250k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[WQHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 7125k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[WQHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 3562k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[WQHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "6" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : WQHD (2560x1440)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=2560:1440,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 1425k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[WQHD]-[VP9]-[${crc^^}].webm;
    done

# VP9
# UHD (3840x2160)

elif [[ "$vid" == "3" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 40500k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[UHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 20250k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[UHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 10125k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[UHD]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "7" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : UHD (3840x2160)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=3840:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 4050k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[UHD]-[VP9]-[${crc^^}].webm;
    done

# VP9
# 4k DCI (4096x2160)

elif [[ "$vid" == "3" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "1" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : High Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 43200k -c:a libopus -b:a 384k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[4k-DCI]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "2" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Medium Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 21600k -c:a libopus -b:a 256k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[4k-DCI]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "3" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 10800k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[4k-DCI]-[VP9]-[${crc^^}].webm;
    done

elif [[ "$vid" == "3" ]] && [[ "$res" == "8" ]] && [[ "$qua" == "4" ]]; then

    echo "Video Format : VP9"
    echo "Resolution   : 4k DCI (4096x2160)"
    echo "Quality      : Very Low Quality"

    for i in *.mkv;
    do ffmpeg -i $i -filter_complex "scale=4096:2160,subtitles='$i'" -c:v libvpx-vp9 -deadline best -b:v 4320k -c:a libopus -b:a 128k ffsuki-VP9-${i%.*}.webm;
    crc=`crc32 ffsuki-VP9-${i%.*}.webm`;
    mv ffsuki-VP9-${i%.*}.webm [${fansub^^}]-${i%.*}-[4k-DCI]-[VP9]-[${crc^^}].webm;
    done

# ----------------------------------------------------------------
# ----------------------------------------------------------------
# ----------------------------------------------------------------
# ----------------------------------------------------------------

# option not available
else
    echo "Error: option not available"
fi
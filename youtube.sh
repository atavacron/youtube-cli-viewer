#!/bin/sh

#To use this script you need mpv and youtube-dl to be installed

echo "CLI YouTube viewer"
echo " "
echo "Youtube Link: "
read YT_LINK
echo " "
echo "Select quality: "
echo " "
echo "0) Full quality"
echo "1) 720p"
echo "2) 480p"
echo "3) 360p"
echo "4) No video"
echo " "
echo "Select from 0-4:"
read QUALITY_SELECT
case "$QUALITY_SELECT" in
	"0") echo " "
	echo "Loading video at full quality..."
	mpv "$YT_LINK"
	;;

	"1") echo " "
	echo "Loading video at 720p..."
	mpv "$YT_LINK" --ytdl-format="bestvideo[height<=?1080]+bestaudio/best"
	;;

	"2") echo " "
	echo "Loading video at 480p..."
	mpv "$YT_LINK" --ytdl-format="bestvideo[height<=?720]+bestaudio/best"
	;;

	"3") echo " "
	echo "Loading video at 360p..."
	mpv "$YT_LINK" --ytdl-format="bestvideo[height<=?480]+bestaudio/best"
	;;

	"4") echo " "
	echo "Loading audio..."
	mpv "$YT_LINK" --no-video
	;;

	*) echo " "
	echo "ERROR!"
esac

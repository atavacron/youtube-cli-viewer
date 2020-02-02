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
if [ "$QUALITY_SELECT" = "0" ]
then
	echo " "
	echo Loading video at full quality...
	mpv "$YT_LINK"
else
	if [ "$QUALITY_SELECT" = 1 ]
	then
		echo " "
		echo "Loading video at 720p..."
		mpv "$YT_LINK" --ytdl-format="bestvideo[height<=?1080]+bestaudio/best"
	else
		if [ "$QUALITY_SELECT" = 2 ]
		then
			echo " "
			echo "Loading video at 480p..."
			mpv "$YT_LINK" --ytdl-format="bestvideo[height<=?720]+bestaudio/best"
		else
			if [ "$QUALITY_SELECT" = 3 ]
			then
				echo " "
				echo "Loading video at 360p..."
				mpv "$YT_LINK" --ytdl-format="bestvideo[height<=?480]+bestaudio/best"
			else
				if [ "$QUALITY_SELECT" = 4 ]
				then
					echo "Loading audio..."
					mpv "$YT_LINK" --no-video
				else
					echo " "
					echo "ERROR!"
				fi
			fi
		fi
	fi
fi


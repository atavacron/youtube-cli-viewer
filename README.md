# youtube-cli-viewer
Simple CLI interface to watch YouTube videos

## Getting Started

To run the script, type `./youtube.sh [VIDEO LINK] [QUALITY OPTION]` on a terminal window.

### Example

You can use the script like this:

`./youtube.sh https://www.youtube.com/watch?v=dQw4w9WgXcQ full-quality`

After typing the command, an mpv window will be launched with your video of choice.


### Dependencies

In order to be able to use this script, you should install `mpv` and `youtube-dl` before running the script.


### Quality Options

There are some available quality options

`full-quality` - Plays the video in the best quality available

`720` - Plays the video in 720p

`480` - Plays the video in 480p

`360` - Plays the video in 360p

`no-video` - Plays only the audio

To display the help screen, type `./youtube.sh help`

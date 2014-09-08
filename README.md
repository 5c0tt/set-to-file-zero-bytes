Last Modified 09/07/14 — 10:34:39 AM • Scott Haneda • [@cometbus](https://twitter.com/cometbus)

# Set file to zero bytes

## pass a file reference to this script, and it will erase the file
I use this for movies and other files that come in series.  I will often catch up to the current series, and keep the last viewed one around to know where I left off.  For example, file-S01E05.mp4.  I know I need file-S01E06.mp4 next, but were I to delete the file I would never remember — renaming was too much work.

So I made a script that sets the file to zero bytes, leaving the file in place, which reminds me which file to download next.

I have actually wrapped this in an automator action in Mac OS X so it is fully drag and droppable.  I'm sure that on Linux there is an equivalent way of making a mini quick gui for a shell script.


## Installation
Download the .sh file, `chmod u+x the-filename` and you should be good to go.

## Making it drag and drop compatable.
If you are not on Mac OS X, you will need to find a wrapper application that can encapsulate a shell script.  If you are on Mac OS X, I have included a final `Set File to zero bytes.app.zip` app that you can use.  If you want to test the integrity of the file, it's md5 is:

    $set-to-file-zero-bytes $md5 "zero-automator.app.zip"
    MD5 (zero-automator.app.zip) = 9e7d345d94d265c485b181d5fc374de6
   
You can also control click on the file, select "Show Package Contents", where you will find all the parts of the file, including my raw shell script you can compare to the file on git-hub.

Please feel free to offer suggestions, or pull the whole file and make fixes.  Supporting multiple files would be nice.  Right now, it takes drag and drop, and also has a Automator call that will show a notification center alert of what is going on.
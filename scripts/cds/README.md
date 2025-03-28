### CD Burning Process

I constructed a pile various free music sources, such as [Neil Cicierega's mashup albums](http://www.neilcic.com/mouthsounds/). When I say a pile, I mean that I took all the music files, converted them to .wav at the appropriate bitrate when necessary, and dumped them all in the same folder. I got the total size of the files, divided that by the known capacity of a CD-R, and created that many folders.

I then used `randomly-batch.sh` to split all the music files randomly into the folders, taking care to place the [large files first](https://mindfulambition.net/big-rocks-first/) for the best fit. This approach worked nicely, I only left about [0.49% of empty space](https://docs.google.com/spreadsheets/d/1GoddlAw7myUQ3OXDyKMRoBbkclVHFTc1sZoVL_s-kmg/edit?usp=sharing) on the CDs when all done. It also added to the entropy - I deliberately decided not to hand-select which songs would go together, to keep the surprise of it all. Each disc and track was unique.

I then used `shuffle.sh` to reorder the tracks on the disc, to not have to worry about what the overall order was of the tracks, but still having some artistic choice to tweak if I thought two songs really shouldn't play together.

When I was satisfied with a given tracklist, I would use `commit.sh`, start burning that disk, and while in progress start shuffling the next one.

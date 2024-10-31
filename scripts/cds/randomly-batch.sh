NUM_PIECES_OF_EIGHT=12

for TRACK in $(ls -S *.wav); do

  BIN=$(($(openssl rand 2 | od -DAn | tr -d '[:space:]') % $NUM_PIECES_OF_EIGHT))
  SIZE="$(du -bc mystery_$BIN $TRACK | tail -n1 | cut -f1)"
  while [ "$SIZE" -ge "733000000" ] ; do
    echo "finding a new folder for $TRACK, mystery_$BIN is too full"
    BIN=$(($(openssl rand 2 | od -DAn | tr -d '[:space:]') % $NUM_PIECES_OF_EIGHT))
    SIZE="$(du -bc mystery_$BIN $TRACK | tail -n1 | cut -f1)"
  done

  mv $TRACK "mystery_$BIN"

done

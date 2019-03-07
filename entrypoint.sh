#/bin/bash

echo "Downloading $1"
aria2c --max-overall-upload-limit=1K --seed-time=0 --summary-interval=10 $1

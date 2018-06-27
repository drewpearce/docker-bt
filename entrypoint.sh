#/bin/bash

echo "Downloading $1"
curl -o /tmp/this.torrent $1
ctorrent -X stop-ctorrent.sh -U 0 /tmp/this.torrent

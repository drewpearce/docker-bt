#/bin/ash

echo "Downloading $1"
curl -o /tmp/this.torrent $1
ctorrent -X /bin/stop-ctorrent.sh -U 0 /tmp/this.torrent

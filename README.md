# BitTorrent Downloader Container

## Docs
### Intro
This is a small Docker container that will download a torrent from the supplied URL of a .torrent file.

### Necessary Options and Environment Vars
* `-v`: You will need to mount a local directory to `/root/Downloads`
* `-e "URL=..."`: You need to supply the .torrent URL as an environment variable

### Example usage
Let's use the Ubuntu Server torrent in our example.

* Build _or_ Pull
  * Build
    * `docker build -t drewpearce/bt .`
  * Pull
    * `docker pull drewpearce/bt`
* Run container and destroy after completion
  * `docker run --rm -v $HOME/Downloads:/root/Downloads -e "URL=http://releases.ubuntu.com/18.04/ubuntu-18.04-live-server-amd64.iso.torrent" drewpearce/bt`

## TODO
* [X] Documentation
* [ ] Easy run script
* [X] Post to dockerhub
* [X] Reduce Image Size
* [ ] Investigate Alpine Linux for even smaller size

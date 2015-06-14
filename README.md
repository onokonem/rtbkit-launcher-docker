Dockerized RTBkit launcher
======

```
sudo docker build -t onokonem/rtbkit-launcher https://github.com/onokonem/rtbkit-launcher-docker.git

sudo docker run \
  -d --net=host \
  -v /storage/docker/launcher/data:/launcher-data \
  -p 2181:2181 \
  onokonem/rtbkit-launcher
```
Dockerized RTBkit launcher
======

```
sudo docker build -t onokonem/rtbkit-launcher https://github.com/onokonem/rtbkit-launcher-docker.git

sudo docker run --net=host -t -i \
  -e PATH=/opt/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
  -e LD_LIBRARY_PATH=/opt/local/lib: \
  -e PKG_CONFIG_PATH=/opt/local/lib/pkgconfig/:/opt/local/lib/pkg-config/: \
  -v $(pwd)/router-config-openrtb.json:/opt/rtbkit/router-config-openrtb.json \
  -v /storage/docker/launcher/data:/launcher-data \
  -v /storage/docker/launcher/log:/var/log \
  -v /storage/docker/launcher/log:/opt/rtbkit/logs \
  -v /storage/docker/launcher/tmp:/tmp \
  onokonem/rtbkit-launcher
```
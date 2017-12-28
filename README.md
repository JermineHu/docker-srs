# docker-srs
srs server docker images
## Used 

#### To start srs 
 
```
docker run --name srs  -itd --restart=always -p 1935:1935 -p 1985:1985 -p 7080:8080  -v ~/srs/demo.conf:/usr/local/srs/srs.conf  jermine/srs ./srs -c ./srs.conf 
```

#### Push the rtsp stram data to srs by ffmpeg

```
ffmpeg -f rtsp -rtsp_transport tcp  -i "rtsp://admin:123456@192.168.16.105/mpeg4/ch1/sub/av_stream" -vcodec copy -acodec copy -f flv -y "rtmp://127.0.0
.1:1935/live?vhost=__defaultVhost__/livestream"
```

#### Config files

##### You can copy config file from path /usr/local/srs/conf
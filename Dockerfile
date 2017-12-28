FROM ubuntu
WORKDIR /usr/local/srs
COPY ./conf /usr/local/srs/conf
COPY ./objs /usr/local/srs/objs
COPY ./init.d/srs /etc/init.d/srs
COPY ./srs /usr/local/srs/srs
COPY ./ffmpeg /usr/local/bin/ffmpeg
EXPOSE 1935 1985 8080
RUN chmod +x ./srs
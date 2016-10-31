FROM wordpress:latest
RUN echo deb http://www.deb-multimedia.org testing main non-free >> /etc/apt/sources.list
RUN apt-get install -y libav-tools
RUN ln -s /usr/bin/avconv /usr/bin/ffmpeg
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

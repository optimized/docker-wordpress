FROM wordpress:latest

# Install FFMPEG
RUN echo deb http://www.deb-multimedia.org testing main non-free >> /etc/apt/sources.list
RUN apt-get install -y libav-tools
RUN ln -s /usr/bin/avconv /usr/local/bin/ffmpeg
RUN ln -s /usr/bin/avconv /usr/local/bin/avconv
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini

# Fix uploads
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

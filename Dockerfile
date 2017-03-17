FROM wordpress:4.7.3-php7.1-apache

# Install FFMPEG
RUN apt-get update && apt-get install -y libav-tools
RUN ln -s /usr/bin/avconv /usr/local/bin/ffmpeg && ln -s /usr/bin/avconv /usr/local/bin/avconv
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini
RUN echo "EnableSendfile Off" >> /etc/apache2/apache2.conf
# Fix uploads
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

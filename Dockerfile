FROM wordpress:latest
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini
RUN touch /usr/local/etc/php/conf.d/uploads.ini && \
    echo "file_uploads = On\n" \
         "memory_limit = 500M\n" \
         "upload_max_filesize = 500M\n" \
         "post_max_size = 500M\n" \
         "max_execution_time = 600\n" \
         > /usr/local/etc/php/conf.d/uploads.ini

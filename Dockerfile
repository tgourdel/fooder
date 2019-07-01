FROM httpd:2.4

ENV SERVER_HOST "52.55.141.119"

COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

WORKDIR /usr/local/apache2/htdocs/

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

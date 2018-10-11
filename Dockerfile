FROM million12/varnish:latest
EXPOSE 80
WORKDIR /etc/varnish/
COPY default.vcl .

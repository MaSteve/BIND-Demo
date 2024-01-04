FROM alpine:latest

COPY init.sh /init.sh
RUN chown root /init.sh && chmod 755 /init.sh

RUN apk --update add bind

RUN mkdir -p /etc/bind && chown root:named /etc/bind/ && chmod 755 /etc/bind
RUN mkdir -p /default && cp -R /etc/bind /default

EXPOSE 53/udp 53/tcp

VOLUME ["/etc/bind"]

CMD /init.sh

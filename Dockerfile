FROM alpine:latest

ENV RADICALE_VERSION=2.1.9

RUN set -ex \
 && apk --no-cache add \
      python3 \
 && pip3 install radicale==${RADICALE_VERSION}

COPY config.ini /etc/radicale.ini

VOLUME ["/data"]
EXPOSE 5232

ENTRYPOINT ["python3", "-m", "radicale"]
CMD ["--config", "/etc/radicale.ini"]

FROM alpine:latest

ENV RADICALE_VERSION=2.1.11

RUN set -ex \
 && apk --no-cache add \
      git \
      python3 \
 && pip3 install \
      radicale==${RADICALE_VERSION} \
      git+https://github.com/Unrud/RadicaleInfCloud \
 && apk --no-cache del \
      git

COPY config.ini /etc/radicale.ini

VOLUME ["/data"]
EXPOSE 5232

ENTRYPOINT ["python3", "-m", "radicale"]
CMD ["--config", "/etc/radicale.ini"]

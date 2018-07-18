#
# Dockerfile for mosquitto
#

FROM alpine

RUN apk add --no-cache ca-certificates mosquitto

VOLUME /etc/mosquitto
EXPOSE 1883 8883

ENTRYPOINT ["mosquitto"]
CMD ["-c", "/mosquitto/config/mosquitto.conf"]

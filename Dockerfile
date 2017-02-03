FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

RUN mkdir /tmp/tv-broadcast
ADD tv-broadcast-0.0.7.jar.zip.001 /tmp/tv-broadcast/
ADD tv-broadcast-0.0.7.jar.zip.002 /tmp/tv-broadcast/
ADD tv-broadcast-0.0.7.jar.zip.002 /tmp/tv-broadcast/
CMD ["unzip", "/tmp/tv-broadcast/tv-broadcast-0.0.7.jar.zip.001"]
ADD keystore.jks /

ENTRYPOINT java  -Dtest.rooms=true -jar /tmp/tv-broadcast/tv-broadcast-0.0.7.jar


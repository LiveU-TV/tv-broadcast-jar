FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

RUN mkdir /tmp/tv-broadcast
ADD tv-broadcast-0.0.7.zip /tmp/tv-broadcast/
CMD ["unzip", "/tmp/tv-broadcast/tv-broadcast-0.0.7.zip"]
ADD keystore.jks /

ENTRYPOINT java  -Dtest.rooms=true -jar /tmp/tv-broadcast/lib/tv-broadcast.jar


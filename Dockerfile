FROM openjdk:8-jdk-alpine

RUN apk update \
&& apk add ca-certificates openssl \
&& update-ca-certificates

WORKDIR /opt

ENV URL=https://download.jboss.org/optaplanner/release/7.4.1.Final/optaplanner-distribution-7.4.1.Final.zip

RUN wget ${URL} -O optaplanner.zip \
&& unzip optaplanner.zip \
&& rm optaplanner.zip

CMD /opt/optaplanner-distribution-7.4.1.Final/examples/runExamples.sh

FROM jboss/wildfly

ENV VERSION 7.4.1.Final

RUN curl -o optaplanner.zip https://download.jboss.org/optaplanner/release/$VERSION/optaplanner-distribution-$VERSION.zip \
&& unzip optaplanner.zip \
&& rm optaplanner.zip

RUN cp optaplanner-distribution-$VERSION/webexamples/binaries/optaplanner-webexamples-*.war /opt/jboss/wildfly/standalone/deployments/optaplanner.war

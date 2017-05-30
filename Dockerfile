FROM openjdk:9-jdk
ENV SDKMAN_DIR /opt/sdkman
## Gradle java 9 fix
ENV JDK_JAVA_OPTIONS "--add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.io=ALL-UNNAMED --add-opens=java.base/java.util=ALL-UNNAMED"
RUN apt-get update -y
RUN apt-get install zip unzip curl -y
RUN curl -s "https://get.sdkman.io" | bash
RUN chmod +x "$SDKMAN_DIR/bin/sdkman-init.sh"
RUN /bin/bash -c "source $SDKMAN_DIR/bin/sdkman-init.sh && sdk install gradle 3.5"

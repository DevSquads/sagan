FROM openjdk:8-jdk

# RUN wget https://services.gradle.org/distributions/gradle-4.5.1-bin.zip
# RUN mkdir /opt/gradle \
#     && unzip -d /opt/gradle gradle-4.5.1-bin.zip
# RUN rm gradle-4.5.1-bin.zip

# RUN wget https://nodejs.org/dist/v4.2.2/node-v4.2.2-linux-x64.tar.gz
# RUN mkdir /opt/node \
#     && tar -xzvf node-v4.2.2-linux-x64.tar.gz -C /opt/node
# RUN rm node-v4.2.2-linux-x64.tar.gz
# RUN chmod -R +x /opt/node/node-v4.2.2-linux-x64/bin/

# # ENV PATH ${PATH}:/opt/gradle/gradle-4.5.1/bin:/opt/node/node-v4.2.2-linux-x64/bin
# ENV PATH ${PATH}:/opt/gradle/gradle-4.5.1/bin

# RUN apk update
# RUN apk add nodejs npm

# COPY ./ /app
WORKDIR /app

# # RUN node --version && npm --version
# RUN gradle --info --stacktrace clean build

EXPOSE 8080

ENTRYPOINT ["./gradlew"]
CMD [":sagan-site:bootRun", "--stacktrace", "--info"]

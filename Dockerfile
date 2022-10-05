ARG BFG_VERSION=1.14.0
ARG BFG_URL=https://repo1.maven.org/maven2/com/madgag/bfg/${BFG_VERSION}/bfg-${BFG_VERSION}.jar

FROM curlimages/curl AS curl
ARG BFG_URL
WORKDIR /out
RUN curl ${BFG_URL} -o bfg.jar

FROM openjdk:8-jre-alpine AS bfg
LABEL org.opencontainers.image.url="https://github.com/9b9/bfg.git"
LABEL org.opencontainers.image.version=${BFG_VERSION}

COPY --from=curl /out/bfg.jar /bfg.jar
ENTRYPOINT [ "java", "-jar", "/bfg.jar" ]
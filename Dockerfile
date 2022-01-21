ARG DOTNET_VERSION
FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_VERSION}

ARG SONAR_SCANNER_VERSION

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apk add --no-cache --update openjdk8-jre=8.302.08-r1 nss=3.66-r0 \
    && dotnet tool install --global dotnet-sonarscanner --version ${SONAR_SCANNER_VERSION}

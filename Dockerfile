ARG DOTNET_VERSION
FROM mcr.microsoft.com/dotnet/core/sdk:${DOTNET_VERSION}

ARG SONAR_SCANNER_VERSION

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apk add --no-cache --update openjdk8-jre=8.222.10-r0 nss=3.44-r0 \
    && dotnet tool install --global dotnet-sonarscanner --version ${SONAR_SCANNER_VERSION}

ARG DOTNET_VERSION
FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_VERSION}

ARG SONAR_SCANNER_VERSION

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apk add --no-cache --update openjdk11-jre~=11 openjdk11~=11 nss~=3 \
    && dotnet tool install --global dotnet-sonarscanner --version ${SONAR_SCANNER_VERSION}

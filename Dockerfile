ARG DOTNET_VERSION
FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_VERSION}

ARG SONAR_SCANNER_VERSION

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apk add --no-cache --update openjdk21-jre~=21 openjdk21~=21 nss~=3 \
    && dotnet tool install --global dotnet-sonarscanner --version ${SONAR_SCANNER_VERSION}

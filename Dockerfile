FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt -y install \
    apt-transport-https \
    ca-certificates  \
    wget \
    gnupg2  \
    locales \
    git  \
    curl \
    systemctl
    
RUN echo "deb [arch=$( dpkg --print-architecture ) signed-by=/usr/share/keyrings/jellyfin.gpg] https://repo.jellyfin.org/debian bullseye main" | tee /etc/apt/sources.list.d/jellyfin.list

RUN apt update

RUN apt install jellyfin -y
    

RUN systemctl start jellyfin

EXPOSE 8096

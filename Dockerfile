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
    
RUN apt install -y extrepo
RUN extrepo enable jellyfin

RUN apt update

RUN apt install jellyfin -y

COPY ./ronaldo_drinking_meme.mp4 /media
COPY ./options.xml /var/lib/jellyfin/root/default/dede
COPY ./media.mblink /var/lib/jellyfin/root/default/dede

RUN systemctl start jellyfin

    
EXPOSE 8096


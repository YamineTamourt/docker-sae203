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

COPY ./'ronaldo driking meme.mp4' : /media

RUN systemctl start jellyfin

    
EXPOSE 8096


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
    
RUN wget -O- https://repo.jellyfin.org/jellyfin_team.gpg.key | apt-key add -
RUN echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/$( awk -F'=' '/^ID=/{ print $NF }' /etc/os-release ) $( awk -F'=' '/^VERSION_CODENAME=/{ print $NF }' /etc/os-release ) main" | tee /etc/apt/sources.list.d/jellyfin.list

RUN apt update

RUN apt install jellyfin -y

COPY ./Init.sh /root/
COPY ./ronaldo_drinking_meme.mp4 /media

RUN systemctl enable jellyfin

EXPOSE 8096

RUN chmod +x /root/Init.sh
CMD ["/bin/bash", "/root/Init.sh"]

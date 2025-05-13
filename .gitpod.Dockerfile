FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
  sudo curl git vim python3 python3-pip python3-venv python3-dev \
  build-essential libpq-dev libffi-dev libssl-dev libxml2-dev \
  libxslt1-dev libjpeg-dev libreadline-dev zlib1g-dev \
  nginx redis-server postgresql supervisor

RUN useradd -m gitpod && echo "gitpod ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER gitpod

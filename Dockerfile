# Utiliser l'image de base Ubuntu Focal
FROM ubuntu:focal

# Mainteneur de l'image
MAINTAINER Fall Lewis YOMBA <fallewi@gmail.com>

# Mise à jour et installation des paquets de base
RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository ppa:ondrej/php -y && \
    apt-get update && \
    apt-get -y install openssh-server passwd sudo && \
    apt-get -y install nginx php8.0-fpm php8.0-mysql git curl iputils-ping net-tools wget && \
    apt-get -y install certbot python3-certbot-nginx && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Configuration de Nginx
COPY nginx.conf /etc/nginx/sites-available/default

# Suppression des services non nécessaires
RUN rm -f /lib/systemd/system/sysinit.target.wants/* && \
    rm -f /lib/systemd/system/multi-user.target.wants/* && \
    rm -f /etc/systemd/system/*.wants/* && \
    rm -f /lib/systemd/system/local-fs.target.wants/* && \
    rm -f /lib/systemd/system/sockets.target.wants/* && \
    rm -f /lib/systemd/system/basic.target.wants/*

# Activer le service SSH
RUN systemctl enable ssh.service

# Créer un utilisateur vagrant avec un mot de passe
RUN useradd --create-home -s /bin/bash vagrant && \
    echo "vagrant:vagrant" | chpasswd && \
    echo 'vagrant ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/vagrant && \
    chmod 440 /etc/sudoers.d/vagrant

# Créer le répertoire .ssh pour l'utilisateur vagrant
RUN mkdir -p /home/vagrant/.ssh && \
    chmod 700 /home/vagrant/.ssh

# Ajouter la clé publique Vagrant
ADD https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub /home/vagrant/.ssh/authorized_keys
RUN chmod 600 /home/vagrant/.ssh/authorized_keys && \
    chown -R vagrant:vagrant /home/vagrant/.ssh

# Volume pour le cgroup
VOLUME [ "/sys/fs/cgroup" ]

# Commande par défaut
CMD ["/usr/sbin/init"]


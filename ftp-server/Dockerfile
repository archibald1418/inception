FROM debian:buster

RUN apt-get update
RUN apt-get install -y vim vsftpd net-tools ssh 
#RUN mkdir /tmp2 && touch /tmp2/test.txt


    # echo 'ChrootDirectory  /tmp2'; \
RUN ( \
    echo 'LogLevel DEBUG2'; \
    echo 'PermitRootLogin yes'; \
    echo 'PasswordAuthentication yes'; \
    echo 'Subsystem	sftp	internal-sftp'; \
    echo 'Match User user'; \
    echo 'ChrootDirectory /home/ldonita/data/wordpress'; \
    echo 'ForceCommand internal-sftp'; \
    echo 'PermitTunnel no'; \
    echo 'AllowAgentForwarding no'; \
    echo 'AllowTcpForwarding no'; \
    echo 'X11Forwarding no'; \
  ) > /etc/ssh/sshd_config2 \
  && mkdir /run/sshd

COPY ./init.sh /opt/init.sh

# RUN useradd -m user \
#   && yes password | passwd user

# RUN yes password | passwd root

# RUN usermod -s /bin/bash user

RUN /opt/init.sh


CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config2"]\
# CMD ["tail", "-f", "/dev/null"]
# -D - nodaemonize
# -e - write to stderr
# -f - config file

FROM debian:buster

RUN apt-get update
RUN apt-get install -y vim vsftpd net-tools ssh 
RUN mkdir /tmp2 && touch /tmp2/test.txt


RUN ( \
    echo 'LogLevel DEBUG2'; \
    echo 'PermitRootLogin yes'; \
    echo 'PasswordAuthentication yes'; \
    echo 'Subsystem	sftp	internal-sftp'; \
    echo 'Match User user'; \
    echo 'ChrootDirectory  /tmp2'; \
    echo 'ForceCommand internal-sftp'; \
    echo 'PermitTunnel no'; \
    echo 'AllowAgentForwarding no'; \
    echo 'AllowTcpForwarding no'; \
    echo 'X11Forwarding no'; \
  ) > /etc/ssh/sshd_config2 \
  && mkdir /run/sshd

RUN useradd -m user \
  && yes password | passwd user

RUN yes password | passwd root

RUN usermod -s /bin/bash user


CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config2"]
# ENTRYPOINT ["vsftpd", "-olisten=YES"]

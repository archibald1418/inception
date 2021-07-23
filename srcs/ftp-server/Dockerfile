FROM debian:buster

RUN apt-get update
RUN apt-get install -y vim vsftpd net-tools ssh 
#RUN mkdir /tmp2 && touch /tmp2/test.txt

# RUN ( \
#     echo 'LogLevel DEBUG2'; \
#     echo 'PermitRootLogin yes'; \
#     echo 'PasswordAuthentication yes'; \
#     echo 'Subsystem	sftp	internal-sftp'; \
#     echo 'Match User sftpuser1'; \
#     echo 'ChrootDirectory /static'; \
#     echo 'ForceCommand internal-sftp'; \
#     echo 'PermitTunnel no'; \
#     echo 'AllowAgentForwarding no'; \
#     echo 'AllowTcpForwarding no'; \
#     echo 'X11Forwarding no'; \
#   ) > /etc/ssh/sshd_config2 \
#   && mkdir /run/sshd;

# RUN yes 1234567890 | passwd root;

# RUN useradd -m sftpuser1 \
# 	&& yes 1234567890 | passwd sftpuser1;

# RUN usermod -s /bin/bash sftpuser1;

#TODO: groups

COPY ./init.sh /opt/init.sh

# RUN useradd -m user \
#   && yes password | passwd user

# RUN yes password | passwd root

# RUN usermod -s /bin/bash user

# RUN /opt/init.sh


# ENTRYPOINT ["./opt/init.sh"]
CMD ["./opt/init.sh"]
# CMD ["tail", "-f", "/dev/null"]
# -D - nodaemonize
# -e - write to stderr
# -f - config file

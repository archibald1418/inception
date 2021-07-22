#!/bin/sh
env
	(
    echo 'LogLevel DEBUG2'; \
    echo 'PermitRootLogin yes'; \
    echo 'PasswordAuthentication yes'; \
    echo 'Subsystem	sftp	internal-sftp'; \
    echo 'Match User sftpuser1'; \
    echo '\tChrootDirectory /static'; \
    echo '\tForceCommand internal-sftp'; \
    echo '\tPermitTunnel no'; \
    echo '\tAllowAgentForwarding no'; \
    echo 'AllowTcpForwarding no'; \
    echo 'X11Forwarding no'; \
  ) > /etc/ssh/sshd_config2 \
  && mkdir -p /run/sshd;

useradd -m ${FTP_USER} \
	&& yes ${FTP_PASS} | passwd ${FTP_USER};
usermod -s /bin/bash ${FTP_USER};

chown -R root /static;

/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config2;


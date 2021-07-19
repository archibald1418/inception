#!/bin/sh
env

useradd -m '$FTP_USER' \
	&& yes '$FTP_PASS' | passwd root;
usermod -s /bin/bash '$FTP_USER';

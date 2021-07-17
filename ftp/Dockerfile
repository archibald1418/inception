FROM debian:buster

RUN apt-get update
RUN apt-get install -y vim vsftpd net-tools

ENTRYPOINT ["vsftpd", "-olisten=YES"]

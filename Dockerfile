FROM ubuntu:18.04

RUN mkdir -p /etc/pterodactyl
RUN curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64
RUN chmod u+x /usr/local/bin/wings

EXPOSE 2022
EXPOSE 8080

CMD wings --debug

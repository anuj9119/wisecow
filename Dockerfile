FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat-openbsd curl && \
    ln -s /usr/games/cowsay /usr/bin/cowsay && \
    ln -s /usr/games/fortune /usr/bin/fortune && \
    apt-get clean

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["bash","/app/wisecow.sh"]

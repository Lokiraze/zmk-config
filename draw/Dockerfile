FROM python:3.12-slim

WORKDIR /app

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install wget unzip
RUN pip install keymap-drawer
RUN wget https://github.com/urob/zmk-helpers/archive/refs/heads/main.zip
RUN unzip main.zip && mv zmk-helpers-main zmk-helpers

CMD ["keymap"]

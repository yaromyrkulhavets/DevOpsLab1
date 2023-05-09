FROM ubuntu
RUN apt-get update
COPY ./web_checker.sh .
RUN mkdir output && cd output && touch file.txt && cd ..
RUN chmod +x ./web_checker.sh
RUN apt-get -y update; apt-get -y install curl
EXPOSE 3000
CMD while true; do * * * * * sleep 15; ./web_checker.sh; done
WORKDIR /usr/src/app

RUN apt-get update && apt-get

RUN bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)

CMD [ "x-ui start" ]

EXPOSE 2053

FROM ubuntu:latest
RUN mkdir /var/node/
WORKDIR /var/node/
COPY ./app.js ./
RUN apt update
RUN apt-get install -y nodejs npm
RUN npm init -y
RUN npm install express
EXPOSE 3000
ENTRYPOINT [ "node" ]
CMD [ "app.js" ]

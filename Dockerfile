FROM node:latest
MAINTAINER Ivan Huayraña

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN git clone https://github.com/prerender/prerender.git
RUN cp -r ./prerender/*  . && ls

RUN npm install \
 && npm cache clean

CMD [ "npm", "start" ]

EXPOSE 3000

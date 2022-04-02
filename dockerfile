FROM node:16

LABEL author="J0KER#4564"
LABEL created="02.04.2022"

WORKDIR /app
ADD . /app
RUN npm i
RUN npm i -g pm2

ENV PORT=3987
EXPOSE ${PORT}

CMD [ "pm2-runtime", "index.js" ]

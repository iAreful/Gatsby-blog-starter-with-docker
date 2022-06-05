#base Image
FROM node:16-alpine

RUN mkdir -p /usr/app
WORKDIR /usr/app


#Copy from
COPY ./ ./


RUN npm install
RUN npm run build
RUN npm run develop
EXPOSE 3000

CMD ["npm", "start"]

FROM node:12.22-alpine
RUN apk add ffmpeg
RUN npm -v
COPY . /app
WORKDIR /app
RUN npm install
RUN npm run postinstall

CMD node parseENV.js && npm run start

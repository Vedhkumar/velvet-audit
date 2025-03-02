FROM node:22-bullseye

RUN apt-get update && apt-get install -y curl git 

WORKDIR /app

COPY package.json package-lock.json ./app

COPY . .

CMD ["sh", "-c", "while true; do sleep 60; done"]




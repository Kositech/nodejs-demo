FROM docker.io/node:12.2

WORKDIR /src/app

COPY package.json package-lock.json ./

RUN npm install --silent --progress=false

COPY . .

CMD ["node", "bin/www"]
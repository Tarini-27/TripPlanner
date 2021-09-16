FROM node

WORKDIR /app

COPY package.json .

RUN npm install

RUN npm audit fix --force

COPY . .

EXPOSE 8000

CMD ["npm", "start"]

FROM node:20-alpine

ARG DATABASE_URL

WORKDIR /app

COPY . .

RUN npm i
RUN npx prisma generate

CMD [ "npm", "run", "web:start" ]
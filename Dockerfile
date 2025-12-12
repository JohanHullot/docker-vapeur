FROM node20-bullseye

WORKDIR app

COPY package.json .

RUN npm i

COPY . .

RUN npx prisma migrate dev

RUN npm run seed

ENV PORT=3015
EXPOSE 3015
CMD [node, start]
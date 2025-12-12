FROM node:22
WORKDIR /app
COPY package.json .
RUN npm i
COPY . .
RUN npx prisma generate

ENV PORT=3015
EXPOSE 3015
CMD ["npm", "start"]
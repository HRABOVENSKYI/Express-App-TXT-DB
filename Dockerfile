FROM node:alpine
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ENV PORT 4200
EXPOSE $PORT
CMD ["node", "app.js"]
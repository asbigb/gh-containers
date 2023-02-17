FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.ditvt0h.mongodb.net
ENV MONGODB_USERNAME asbigb
ENV MONGODB_PASSWORD 6X97oZgW0I9t08ZX

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
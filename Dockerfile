FROM node:lts-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --ignore-scripts
COPY . .
CMD ["node", "src/index.js"]

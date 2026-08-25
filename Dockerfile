FROM node:22-slim
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . /app
ENV PORT=5000
CMD ['node', 'index.js']
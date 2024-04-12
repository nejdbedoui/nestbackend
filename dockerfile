FROM node:18-alpine

WORKDIR ./

COPY package*.json ./

RUN npm ci --legacy-peer-deps

COPY . .

RUN npm run build

EXPOSE 3001

CMD ["npm", "start"]

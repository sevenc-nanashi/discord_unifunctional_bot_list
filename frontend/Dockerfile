FROM node:16.9.0-slim

WORKDIR /app
ENV NODE_ENV production

COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install

COPY . .

RUN yarn build
CMD ["yarn", "start"]
FROM node:16.17.0-bullseye-slim
ENV NODE_ENV production
ENV PORT 8080
EXPOSE 8080
WORKDIR /usr/src/app
COPY --chown=node:node . /usr/src/app
RUN npm ci --only=production
USER node
CMD "npm" "start"
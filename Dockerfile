FROM node:16-alpine


WORKDIR /app


COPY . .


CMD ["node", "assignment2_app.js"]
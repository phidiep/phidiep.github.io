FROM node:alpine
COPY . /app
WORKDIR /app
RUN npm install -g @vue/cli@latest
RUN vue add vuetify
# CMD ["npm", "run", "serve", "--port", "8080"]
CMD npm run serve
EXPOSE 8080
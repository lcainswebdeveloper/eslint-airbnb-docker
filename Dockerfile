# Set the base image.
FROM node:10

RUN mkdir /usr/src/cache
WORKDIR /usr/src/cache

RUN npm init -y
RUN npm install eslint install-peerdeps -g
RUN npx install-peerdeps eslint-config-airbnb

# Create and define the application's working directory.
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
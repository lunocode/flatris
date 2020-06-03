FROM node:14.3.0-buster

WORKDIR			/app
COPY	package.json	/app
RUN	yarn install
COPY	.	/app
RUN	yarn build

EXPOSE 3000
CMD yarn start

#stage 1

FROM node:18.20.3 AS builder
#cloning repository
RUN git clone https://github.com/ansal-sajan/strapi-terraform.git /srv/strapi

#setting wroking directory
WORKDIR /srv/strapi
RUN npm ci --production
RUN npm run build
#stage 2
FROM node:18.20.3-slim
#setting work directory
WORKDIR /srv/strapi
#copying files from previous stage
COPY --from=builder /srv/strapi /srv/strapi

EXPOSE 1337
CMD ["npm", "run", "develop"]

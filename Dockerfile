# docker image build base on caddy image
FROM caddy:2.0.0-alpine

# workdir
WORKDIR /usr/share/caddy

# copy all files

COPY . .


#ecpose port

EXPOSE 80

# RUN CADDY

CMD ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile"]


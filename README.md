# squid

### Compose example

```
version: "3.7"
services:
  squid:
    image: jgranzow/squid
    volumes:
      - /srv/squid/config:/etc/squid
    ports:
      - "3128:3128"
    labels:
     - traefik.enable=false
    deploy:
      restart_policy:
        condition: unless-stopped
```

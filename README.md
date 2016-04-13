# nginx
Docker image for Nginx

### build

```
cd [repository_directory]
docker build -t nginx .
```

### docker run

```
docker run -d -p 80:80 -p 443:443 -v [conf_dir]:/etc/nginx -v /etc/letsencrypt:/etc/letsencrypt --name nginx nginx
```

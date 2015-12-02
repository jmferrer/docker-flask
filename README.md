# docker-flask
Dockerized flask service.

Get the content of ansible directory running:
```
https://github.com/jmferrer/ansible-flask.git
```

Build image with:
```
docker build -t flask:ubuntu14.04 .
```

After creating your flask app in /some/place mount it under /var/www/flaskapp/flaskapp creating the container this way:
```
docker create --name flaskapp --hostname flaskapp -p 80:80 -v /some/place:/var/www/flaskapp/flaskapp flask:ubuntu14.04
```

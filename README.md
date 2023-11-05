# PEzor Docker

### Build
`docker build -f Dockerfile -t pezor .`

### Interactive Mode
`docker run -it pezor bash`

### Stop and delete all images
```
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)
```


### Usage
`docker run -v /home/ops/Documents:/home/ops/Documents -it pezor`

### Premade docker image
https://hub.docker.com/r/nahid5/pezor

### Blogpost on it some usage
https://whatsyourssn.com/posts/pezor/

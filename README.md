# PEzor Docker

### Build
docker build -f Dockerfile -t pezor .

### Interactive Mode
docker run -it pezor bash

### Stop and delete all images
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)

### Usage
docker run -v /home/kali/Documents:/home/kali/Documents -it pezor /app/PEzor/PEzor.sh

### Premade docker image
https://hub.docker.com/r/nahid5/pezor
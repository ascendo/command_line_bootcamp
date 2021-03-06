# Command-line bootcamp

Learn the unix command-line by using it in your browser.

### contributors

- [@jessicamizzi](https://github.com/jessicamizzi)
- [@gedankenstuecke](https://github.com/gedankenstuecke)
- [@alexmorley](https://github.com/alexmorley) *<- responsible for this project still working* 💜


### setup and run the docker server backend

Instructions for running on digitalocean:

Create a new instance of the Ubuntu+docker image.

then ssh in and...

```bash
# keep it running
tmux

# need some basics
sudo apt-get update
sudo apt-get install -y build-essential g++ docker.io

# install and set up nvm and node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.bashrc

# use node version 4.1
nvm install 4.1
nvm use 4.1

# major dependencies
npm install --global docker-browser-server

# setup docker
sudo docker pull ubuntu
git clone https://github.com/ascendo/command_line_bootcamp
cd command_line_bootcamp
sudo docker build -t "command_line_bootcamp" .

# run
#docker-browser-server command_line_bootcamp -p 8080
sudo PATH=/home/wyim/.nvm/versions/node/v4.1.2/bin:$PATH /home/wyim/.nvm/versions/node/v4.1.2/bin/docker-browser-server command_line_bootcamp -p 8080
```

### build and deploy the frontend

You'll need node.js

```bash
# install and set up nvm and node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.bashrc

# some dependencies don't work with node 1+, so stick with 0.12
nvm install 0.12
nvm use 0.12
```

Once you've got node installed, grab this repo and let node install the dependencies:

```bash
git clone https://github.com/ascendo/command_line_bootcamp.git
cd command_line_bootcamp
npm install
```

Make your changes (if any) and then deploy:

```bash
npm run deploy
```
run:
```bash
npm run start 8081
```





### cleaning up long-running containers

Sometimes people leave their browser windows open for a really long time. If you don't want to fund the docker container running for that time, you can clean up long-running containers:

```bash
docker stop $(docker ps | grep hours | cut -d ' ' -f1 | paste - - - - )
```


```if permission error
sudo usermod -a -G docker $USER
```
https://techoverflow.net/2017/03/01/solving-docker-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket/

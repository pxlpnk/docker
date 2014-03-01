docker
======


CHEATSHEET:
==========

# First Demo:

```
docker run ubuntu /bin/echo hello world
```

# Second Demo

tmux

# builds the containers
./build.sh


# shows existing containers
docker images

# switch those little helpers on

cat run.sh

./run.sh

# shows running containers
docker ps


# attach worker container in one screen

docker attach worker_id
# attach web container in other screen

docker attach webapp_id

# make request:

curl http://localhost/clean_keyboard/10


# start addition attached worker
docker run -link redis01:db -name worker02 worker -a

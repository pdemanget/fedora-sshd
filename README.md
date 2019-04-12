fedora-sshd
===========

Dockerized SSH service, built on top of [official Fedora](https://registry.hub.docker.com/_/ubuntu/) images.
forked from [rastasheep/ubuntu-sshd](https://github.com/rastasheep/ubuntu-sshd) 

Image tags
----------

- pdemanget/fedora-sshd:25
- pdemanget/fedora-sshd:26
- pdemanget/fedora-sshd:27
- pdemanget/fedora-sshd:28
- pdemanget/fedora-sshd:29

Docker hub help
---------------
To run image:

 $  docker run --rm -i -p 1022:22 -v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys fedora-sshd 


docker-compose.yml: 

    version: '3'
    services:
        ssh-host:
          image: pdemanget/fedora-sshd:29
          ports:
            - "10322:22"
          volumes:
            - "~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys"
            
to login

    ssh root@127.0.0.1 -p 10322

NO password should be needed if you have binded the authorized keys to your ad_rsa.pub


build info
----------
docker build . -t fedora-sshd
docker tag 766eee1b0728 pdemanget/fedora-sshd:28
docker login --username=pdemanget 
docker push pdemanget/fedora-sshd



Config:
  - exposed port 22
  - default command: `/usr/sbin/sshd -D`


Issues
------

If you run into any problems with this image, please check (and potentially file new) issues on the 
[pdemanget/fedora-sshd](https://github.com/pdemanget/fedora-sshd/issues) repo, which is the source for this image.

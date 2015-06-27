# work_docker

ubunt 14.04(VurtialBox,Vagrant), Docker, CentOS 7, nginx

## Usage

### Initialize

```
$ git clone https://github.com/hirune525/work_docker.git
$ vagrant up
$ vagrant ssh
(ubuntu) # cd /vagrant
```

### Install Docker
Read [here](https://docs.docker.com/installation/ubuntulinux/).

### Docker run

```
(ubuntu) # docker build -t rtbt/centos_app_env .
(ubuntu) # docker run -d --name example-env -p 80:80 rtbt/centos_app_env
```



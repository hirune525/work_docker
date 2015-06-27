# work_docker

ubunt 14.04(VurtialBox,Vagrant), Docker, CentOS 7, nginx

## Usage

### Initialize

```
$ git clone https://github.com/hirune525/work_docker.git
$ vagrant up
$ vagrant ssh
(Guest OS) # cd /vagrant
```

### Install Docker
Read [here](https://docs.docker.com/installation/ubuntulinux/).

### Docker run

```
(Guest OS) # docker build -t [image tag] .
(Guest OS) # docker run -d --name [container name] -p 80:80 [image tag]
```

## Example

```
(Guest OS) # curl http://localhost:80
Hello, Nginx!
```


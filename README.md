# Symfony docker environment

This repository contain docker-compose and Dockerfile for a ready to use Symfony/MySQL/PMA.

## Installation

### Linux 
You can use the make file :

#### Build all services 
```bash
make compose
```

#### Run 
```bash
make run
```
Refer to the makefile for the other command

### Windows
On Windows makefile cannot be used (except with tricks and magic), you can directly write command you found in the makefile.

## Usage
When containers are up you can go to the following URLs : 
- symfony.docker.test:1080
- traefik.docker.test:1080
- pma.docker.test:1080

## TODO
- Update Traefik version
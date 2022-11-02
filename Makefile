SHELL := /bin/bash

up:
	docker rm test --force
	docker run -d --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --name test aleksefremov/ansible:ubuntu_systemctl_docker


build:
	docker build -t aleksefremov/ansible:ubuntu_systemctl_docker .
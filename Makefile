SHELL := /bin/bash

PLAYBOOK_CMD=ansible-playbook

init_pi:
	ssh-keygen -R raspberrypi.local
	$(PLAYBOOK_CMD) -i hosts.yml \
		-e raspi_password=$(password) \
		-e raspi_hostname=$(hostname) \
		init_pi.yml

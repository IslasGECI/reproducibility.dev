playbook:
	ansible-playbook playbook.yml

.PHONY: ping playbook

ping:
	ansible reproducibility.dev --become --module-name ping

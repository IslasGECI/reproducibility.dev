playbook:
	ansible-playbook ansible-playbook.yml

.PHONY: ping playbook

ping:
	ansible islasgeci.dev --module-name ping --become

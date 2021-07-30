playbook:
	ansible-playbook playbook.yml

.PHONY: ping playbook

ping:
	ansible islasgeci.dev --become --module-name ping 

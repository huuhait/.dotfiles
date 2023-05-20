.PHONY: clean
packages:
	./scripts/packages

.PHONY: desktop
desktop: packages
	ansible-playbook playbooks/desktop.yml --ask-become-pass

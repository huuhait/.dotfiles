.PHONY: prepare
prepare:
	ansible-playbook playbooks/prepare.yml --ask-become-pass

.PHONY: plymouth
plymouth:
	ansible-playbook playbooks/plymouth.yml --ask-become-pass

.PHONY: grub
grub:
	ansible-playbook playbooks/grub.yml --ask-become-pass

.PHONY: packages
packages:
	./scripts/packages

.PHONY: desktop
desktop:
	ansible-playbook playbooks/desktop.yml --ask-become-pass

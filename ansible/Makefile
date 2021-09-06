.PHONY: create_role run_playbook

create_role:
	@ansible-galaxy init $(role) --init-path=./roles

run_playbook:
	@ansible-playbook -i inventory/aws_ec2.yaml site.yml -u ubuntu -vvv
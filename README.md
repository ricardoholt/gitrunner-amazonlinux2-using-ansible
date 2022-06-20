# GitRunner Installation on Amazon Linux2 using Ansible

Install GitRunner "shell" and "docker" executer on Amazon Linux2 using Ansible.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

1: Terraform
2: Ansible
3: Change Variable in files "ansible-variable.yaml" and "terraform.tfvars" as per your configuration.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.19.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.Amazon_Linux2_Runner_Instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.SG_FOR_RUNNER_INSTANCE](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [null_resource.CONFIGURE_GITRUNNER](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AMI_ID"></a> [AMI\_ID](#input\_AMI\_ID) | Amazon Linux2 AMI ID | `string` | n/a | yes |
| <a name="input_ANSIBLE_DIR_PATH"></a> [ANSIBLE\_DIR\_PATH](#input\_ANSIBLE\_DIR\_PATH) | Ansible Directory Path | `string` | n/a | yes |
| <a name="input_ANSIBLE_PLAYBOOK_INSTALL"></a> [ANSIBLE\_PLAYBOOK\_INSTALL](#input\_ANSIBLE\_PLAYBOOK\_INSTALL) | Name of Ansible Playbook for Installing GitRunner | `string` | n/a | yes |
| <a name="input_EC2_KEY_PAIR"></a> [EC2\_KEY\_PAIR](#input\_EC2\_KEY\_PAIR) | EC2 Key pair name | `string` | n/a | yes |
| <a name="input_EC2_USERNAME"></a> [EC2\_USERNAME](#input\_EC2\_USERNAME) | Name of EC2-instance user | `string` | n/a | yes |
| <a name="input_INSTANCE_ROLE"></a> [INSTANCE\_ROLE](#input\_INSTANCE\_ROLE) | EC2 Instance Role | `string` | n/a | yes |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | EC2 Instance type | `string` | n/a | yes |
| <a name="input_REGION"></a> [REGION](#input\_REGION) | AWS Region | `string` | n/a | yes |
| <a name="input_SSH_PRIVATE_KEY_APTH"></a> [SSH\_PRIVATE\_KEY\_APTH](#input\_SSH\_PRIVATE\_KEY\_APTH) | SSH Key path | `string` | n/a | yes |
| <a name="input_SUBNET_ID"></a> [SUBNET\_ID](#input\_SUBNET\_ID) | Subnet ID where you what to create EC2 | `string` | n/a | yes |
| <a name="input_VPC_ID"></a> [VPC\_ID](#input\_VPC\_ID) | VPC ID where you what to create SG | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_EC2_ID_And_IP"></a> [EC2\_ID\_And\_IP](#output\_EC2\_ID\_And\_IP) | Printing EC2-instance ID and Public IP |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

variable "REGION" {
  description = "AWS Region"
  type        = string
}

variable "AMI_ID" {
  description = "Amazon Linux2 AMI ID"
  type        = string
}

variable "INSTANCE_TYPE" {
  description = "EC2 Instance type"
  type        = string
}

variable "EC2_KEY_PAIR" {
  description = "EC2 Key pair name"
  type        = string
}

variable "INSTANCE_ROLE" {
  description = "EC2 Instance Role"
  type        = string
}

variable "SUBNET_ID" {
  description = "Subnet ID where you what to create EC2"
  type        = string
}

variable "VPC_ID" {
  description = "VPC ID where you what to create SG"
  type        = string
}

variable "SSH_PRIVATE_KEY_APTH" {
  description = "SSH Key path"
  type        = string
}

variable "ANSIBLE_DIR_PATH" {
  description = "Ansible Directory Path"
  type        = string
}

variable "EC2_USERNAME" {
  description = "Name of EC2-instance user"
  type        = string
}

variable "ANSIBLE_PLAYBOOK_INSTALL" {
  description = "Name of Ansible Playbook for Installing GitRunner"
  type        = string
}



resource "aws_instance" "Amazon_Linux2_Runner_Instance" {
  ami                    = var.AMI_ID
  instance_type          = var.INSTANCE_TYPE
  key_name               = var.EC2_KEY_PAIR
  iam_instance_profile   = var.INSTANCE_ROLE
  subnet_id              = var.SUBNET_ID
  vpc_security_group_ids = [aws_security_group.SG_FOR_RUNNER_INSTANCE.id]
  tags = {
    Name      = "GitRunner"
    Terraform = "Yes"
  }
}


resource "aws_security_group" "SG_FOR_RUNNER_INSTANCE" {
  name        = "ALLOW_SSH_TERRAFORM"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.VPC_ID
  ingress {
    description = "SSH from Anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name      = "ALLOW_SSH"
    Terraform = "Yes"

  }
}

resource "null_resource" "CONFIGURE_GITRUNNER" {
  triggers = {
    trigger = aws_instance.Amazon_Linux2_Runner_Instance.public_ip
  }
  provisioner "local-exec" {
    working_dir = var.ANSIBLE_DIR_PATH
    command     = "ansible-playbook --inventory ${aws_instance.Amazon_Linux2_Runner_Instance.public_ip}, --private-key ${var.SSH_PRIVATE_KEY_APTH} -u ${var.EC2_USERNAME} ${var.ANSIBLE_PLAYBOOK_INSTALL}"

  }
}



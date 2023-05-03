terraform {
  source = "git::git@github.com:MaxwellEblock/terraforEC2.git//modules/ec2"
}

include "remote_state" {
  path = find_in_parent_folders()
}

locals {
  region = "us-east-1"
}

inputs = {
  vpc_id            = "vpc-0278547d701883826"
  subnet_ids        = "subnet-0b5d25660a1f213ca"
  security_group_id = "sg-0f8df7b53e48d9579"
  key_name          = "poc-mv"
}
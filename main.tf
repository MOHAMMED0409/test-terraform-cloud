## PUT TERRAFORM CLOUD BLOCK HERE!  ##

terraform {
  cloud {

    organization = "terraform-tut-1"

    workspaces {
      name = "test-1"
    }
  }
}

# Variable blocks directly within the main.tf. No arguments necessary.
# variable "aws_access_key" {}
# variable "aws_secret_key" {}
variable "region" {}

# provider arguments call on the variables which then call on terraform.tfvars for the values.
provider "aws" {
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
  region = var.region
}

# Add .gitignore file in this directory with the terraform.tfvars

# resource "aws_instance" "tc_instance" {
#   ami           = "ami-0e2c8caa4b6378d8c"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "TC-triggered-instance"
#   }
# }

# resource "aws_iam_user" "test_user" {
#   name = "test-user"
# }

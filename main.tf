terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }


  backend "s3" {
    # This backend configuration is filled in automatically at test time by Terratest. If you wish to run this example
    # manually, uncomment and fill in the config below.

    bucket         = "terraform-book-state-nt2"
    key            = "terrascan1/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-book-locks2"
    encrypt        = true
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

module "ec2_instance" {
  #source = "github.com/NTitmus/terrascan2?ref=v1.0.0"
  source = "github.com/NTitmus/terrascan2?ref=37a00bfdba334800392cbb304c418a1027a5b649"
  #source = "git@github.com:NTitmus/terrascan2?ref=v1.0.0.git"
}

#resource "aws_instance" "simple" {
#  instance_type          = "t2.micro"
#  ami                    = "ami-0cfd0973db26b893b"
#  monitoring             = true

#  metadata_options {
#    http_endpoint = "enabled"
#    http_tokens   = "required"
#  }

#}
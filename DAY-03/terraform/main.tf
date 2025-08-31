provider "aws" {
  region = "us-east-1"  # adjust region
}

module "s3_bucket" {
  source      = "./modules/s3-bucket"
  bucket_name = "nuvi-devops-day3"
}

module "ec2_instance" {
  source                = "./modules/ec2-instance"
  ami                   = "ami-00ca32bbc84273381"
  instance_type         = "t2.micro"
  key_name              = "NuwanDevOps"
  vpc_security_group_id = "sg-068800ff8eb565ca0"
  name                  = "Terraform-EC2"
}


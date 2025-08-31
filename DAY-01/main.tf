provider "aws" {
    region = "us-east-1"

}

#Create EC2 Instanace with Hardcoded values
resource "aws_instance" "SRV_DAY01" {
    ami = "ami-00ca32bbc84273381" #Amazon Linux 2023 AMI 2023.8.20250818.0 x86_64 HVM kernel-6.1
    instance_type = "t2.micro"
    key_name = "NuwanDevOps" #NuwanDevOps
    vpc_security_group_ids = [
         "sg-068800ff8eb565ca0"
    ]
}

# Output public IP
output "SRV_DAY01_public_ip" {
  value = aws_instance.SRV_DAY01.public_ip
}

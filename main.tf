########
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
provider "aws" {
   region = var.aws_region
   profile = var.aws_profile
}
resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type #"t2.micro"

  tags = {
    Name = "HelloWorld"

  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
#Uso sem  Variavel
  #  region  = "us-east-1" # Brasil -> us-east-1
  region = var.aws_region
  #profile = "t3rr@"
  profile = var.aws_profile

}
##
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
#Esta sendo criado um recurso S3 Bucket esse recurso dentro da estrutura do Terraforme sera usado o nome my-teste-bucket
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-xptobolinha322"
  acl    = "private"
  ##
  tags = var.instance_tags
#  tags = {
#    Name        = "My bucket"
#    Environment = "Dev"
#    ManagedBy   = "Terraform"
#   Owner       = "Alexandre"
#   UpdateAt    = "2021-08-23"
  }
  resource "aws_instance" "web" {
    ami           = var.instance_ami
    instance_type = var.instance_type #"t2.micro"

    tags = {
      Name = "HelloWorld"
  }
}

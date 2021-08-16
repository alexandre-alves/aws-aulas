# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  region  = "us-east-1" # Brasil -> us-east-1
  profile = "t3rr@"
}
#########
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
#Esta sendo criado um recurso S3 Bucket esse recurso dentro da estrutura do Terraforme sera usado o nome my-teste-bucket
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-xptobolinha322"
  acl    = "private"
##
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
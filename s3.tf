#Esta sendo criado um recurso S3 Bucket esse recurso dentro da estrutura do
#Terraforme sera usado o nome my-teste-bucket
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
#Criando bucket com nome:
  #  bucket = "my-tf-test-bucket-xptobolinha322"
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
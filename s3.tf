#Esta sendo criado um recurso S3 Bucket, esse recurso na estrutura do
#Terraforme sera usado o nome my-teste-bucket feito troca para variavel com nome randomico
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  #Criando bucket com nome:
  #  bucket = "my-tf-test-bucket-xptobolinha322"
  acl = "private"
  tags = local.common_tags
  resource "aws_s3_bucket_object" var.bucket{
    bucket = aws_s3_bucket.bucket
        key = "config/ips.json"
        source = "ips.json"
        etag =filemd5("ips.json")

  }
  }

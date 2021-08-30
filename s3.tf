#Esta sendo criado um recurso S3 Bucket, esse recurso na estrutura do
#Terraforme sera usado o nome my-teste-bucket feito troca para variavel com nome randomico
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  #Criando bucket com nome:
  #  bucket = "my-tf-test-bucket-xptobolinha322"
  acl = "private"
  tags = local.common_tags
}
resource  "aws_s3_bucket_object" "my-test-bucket" {
    bucket = aws_s3_bucket.my-test-bucket.bucket
        key = "config/${local.ip_filepath}"
        source = local.ip_filepath
        etag =filemd5(local.ip_filepath)


}

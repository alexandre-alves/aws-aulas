variable "environment" {
  type        = string
  description = ""

}
variable "aws_region" {
  type        = string
  description = ""
  # default = "us-east-1"
}
variable "aws_profile" {
  type        = string
  description = ""
  # movido para arquivos de variaveis  default = "t3rra"
}
variable "instance_ami" {
  type        = string
  description = ""
  # movido para arquivo de variaveis   default = "ami-0ee02acd56a52998e" #Imagem ubuntu 16
}
variable "instance_type" {
  type        = string
  description = ""

  #  default = "t2.micro"
}
variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu16"
    Project = "Curso Tf"
  }
}
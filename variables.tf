variable "aws_region" {
  type = string
  description = ""
  default = "us-eest-1"
}
variable "aws_profile" {
  type = string
  description = ""
  default = "t3rra"
}
variable "instance_ami" {
  type = string
  description = ""
  default = "ami-0ee02acd56a52998e"
}
variable "instance_type" {
  type = string
  description = ""
  default = "t2.micro"
}
variable "instance_tags" {
  type = map(string)
  description = ""
  default = {
    Name = "Ubuntu16"
    Project = "Curso Tf"
  }
}
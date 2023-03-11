provider "aws" {
  region= "us-east-1"
  access_key = "sddflk"
  secret_key = "slkdfs"
}

resource "aws_instance" "my_first_server" {
  instance_type = "t2.micro"
  ami = "ami"
}
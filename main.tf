resource "aws_vpc" "my_vpc" {
  cidr_block = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "dev"
  }
}

resource "aws_subnet" "my_public_subnet" {
  vpc_id = aws_vps.my_vpc.id
  cidr_block = "10.123.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1"
  tags = {
    Name = "dev-public"
  }
}
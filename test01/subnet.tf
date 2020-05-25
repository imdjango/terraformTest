resource "aws_subnet" "subnet14_1b" {
  vpc_id            = "${aws_vpc.vpc14.id}"
  availability_zone = "us-west-1b"
  cidr_block        = "14.0.1.0/24"
  tags = {
    Name = "subnet14_1b"
  }
}

resource "aws_subnet" "subnet14_1c" {
  vpc_id            = "${aws_vpc.vpc14.id}"
  availability_zone = "us-west-1c"
  cidr_block        = "14.0.2.0/24"
  tags = {
    Name = "subnet14_1c"
  }
}

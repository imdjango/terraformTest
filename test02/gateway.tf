resource "aws_internet_gateway" "gateway14" {
  vpc_id = "${aws_vpc.vpc14.id}"
  tags = {
    Name = "gateway14"
  }
}

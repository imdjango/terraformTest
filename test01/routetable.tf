resource "aws_route_table" "rt14" {
  vpc_id = "${aws_vpc.vpc14.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gateway14.id}"
  }

  route {
    cidr_block = "114.0.0.0/16"
    gateway_id = "${aws_vpc_peering_connection.peering14test.id}"
  }
  tags = {
    Name = "rt14"
  }
}

resource "aws_route_table_association" "rt14_1b" {
  subnet_id      = "${aws_subnet.subnet14_1b.id}"
  route_table_id = "${aws_route_table.rt14.id}"
}
resource "aws_route_table_association" "r14_1c" {
  subnet_id      = "${aws_subnet.subnet14_1c.id}"
  route_table_id = "${aws_route_table.rt14.id}"
}

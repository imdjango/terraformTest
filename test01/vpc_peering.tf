resource "aws_vpc_peering_connection" "peering14test" {
  peer_owner_id = "560570842358"
  peer_vpc_id   = "vpc-0791feb82662ed4d1"
  vpc_id        = "${aws_vpc.vpc14.id}"
  peer_region   = "eu-west-3"

  tags = {
    Name = "vpc14 peering region between California and Paris"
  }
}

## peering시 주석 제거
## 2번째줄 peer vpc id 확인

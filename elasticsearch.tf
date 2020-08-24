module "elasticsearch" {
    source = "../terraform-aws-elasticsearch/"

    domain_name           = "subbu-es-vpc"
    vpc_options_subnet_ids = [ aws_subnet.private01.*.id[0],aws_subnet.private02.*.id[1] ]
    vpc_options_security_group_ids = [ aws_security_group.es_sg.id ]
    cluster_config_zone_awareness_enabled = true
    cluster_config_availability_zone_count = 3
    cluster_config_instance_count = 4
}


resource "aws_security_group" "es_sg" {
  name        = "es_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.dishvpc.id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.dishvpc.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "es_sg"
  }
}
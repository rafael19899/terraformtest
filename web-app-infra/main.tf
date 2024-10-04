provider "aws" {
  region = "us-west-2"
}

resource "aws_autoscaling_group" "example" {
  launch_configuration = aws_launch_configuration.example.id
  min_size = 1
  max_size = 10
  vpc_zone_identifier = ["subnet-12345678"]
}

resource "aws_rds_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "bar"
  parameter_group_name = "default.mysql5.6"
}


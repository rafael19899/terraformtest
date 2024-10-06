provider "aws" {
  region = "us-east-1"
}

resource "aws_launch_configuration" "example" {
  name          = "example-launch-configuration"
  image_id      = "ami-032346ab877c418af"   # Using the provided Ubuntu AMI ID
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "example" {
  launch_configuration = aws_launch_configuration.example.id
  min_size             = 1
  max_size             = 10
  vpc_zone_identifier  = ["subnet-12345678"]
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.32"  # Using the correct MySQL version
  instance_class       = "db.t4g.micro"  # Supported instance class
  db_name              = "mydb"
  username             = "foo"
  password             = "Novasenha1010"
  parameter_group_name = "default.mysql8.0"
}

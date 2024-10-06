provider "aws" {
  region = var.region
}


resource "aws_launch_template" "example" {
  name_prefix   = "example-"
  image_id      = var.ami_id
  instance_type = var.instance_type

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "example" {
  launch_template {
    id      = aws_launch_template.example.id
    version = "$Latest"
  }
  min_size            = 1
  max_size            = 10
  vpc_zone_identifier = var.subnet_ids
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.32"
  instance_class       = "db.m5.large"
  db_name              = "mydb"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  publicly_accessible  = false
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name = var.db_subnet_group_name
  skip_final_snapshot  = true
}

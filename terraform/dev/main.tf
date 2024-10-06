provider "aws" {
  region = "us-east-1"
}

resource "aws_launch_template" "example" {
  name = "Ubuntu_20.04-x86_64-SQL_2022_Standard-2023.10.16"
  image_id = "ami-094be4c7f1e506a7a"   # Using the provided Ubuntu AMI ID with SQL Server Standard
  instance_type = "t3.medium"  # Ensure this is a compatible instance type

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "example" {
  launch_template {
    id      = aws_launch_template.example.id
    version = "$Latest"
  }
  min_size             = 1
  max_size             = 10
  vpc_zone_identifier  = ["subnet-037f4dcb7503b7388", "subnet-0717fa595b184d6f4", "subnet-04fee9ec178ba1043", "subnet-0856591be956d828e", "subnet-035e49680f3da0f7e", "subnet-04423432118c0b7d9"]
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.32"
  instance_class       = "db.m5.large"
  db_name              = "mydb"
  username             = "foo"
  password             = "StrongPass1010"  # Ensure password is at least 8 characters long
  parameter_group_name = "default.mysql8.0"
  publicly_accessible  = false
  vpc_security_group_ids = ["sg-0cf2d9c3921140c8a"]
  db_subnet_group_name = "default-vpc-0f11fa074a9b64fb5"
  skip_final_snapshot  = true
}

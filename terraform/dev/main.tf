provider "aws" {
  region = "us-east-2"  # Set the region to Ohio
}

resource "aws_launch_template" "example" {
  name = "example-launch-template"
  image_id = "ami-0c55b159cbfafe1f0"  # Using a known valid Amazon Linux 2 AMI for Ohio
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
  vpc_zone_identifier  = ["subnet-07ed8fbe19fe0bbbe", "subnet-0ea6a4dbdddf9665f", "subnet-009147405830511d0"]  # Update with your Ohio subnets
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.32"
  instance_class       = "db.m5.large"
  db_name              = "mydb"
  username             = ${{ secrets.DB_USER }}
  password             = ${{ secrets.DB_PASSWORD }}  # Ensure password is at least 8 characters long
  parameter_group_name = "default.mysql8.0"
  publicly_accessible  = false
  vpc_security_group_ids = ["sg-031cc3dcf2dcd9737"]  # Update with your Ohio security group ID
  db_subnet_group_name = "default-vpc-0fe08d86539991b68"  # Ensure this is a valid subnet group
  skip_final_snapshot  = true
}

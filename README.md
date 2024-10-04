# terraformtest
terraformtest1

# terraform init


Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.69.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
root@rafael-Inspiron-3501:/home/rafael/Área de Trabalho/repoterra/terraform/dev# # terraform plan
var.environment
  The environment name

  Enter a value: dev


Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create
Terraform will perform the following actions:

  # aws_autoscaling_group.example will be created
  + resource "aws_autoscaling_group" "example" {
      + arn                              = (known after apply)
      + availability_zones               = (known after apply)
      + default_cooldown                 = (known after apply)
      + desired_capacity                 = (known after apply)
      + force_delete                     = false
      + force_delete_warm_pool           = false
      + health_check_grace_period        = 300
      + health_check_type                = (known after apply)
      + id                               = (known after apply)
      + ignore_failed_scaling_activities = false
      + launch_configuration             = (known after apply)
      + load_balancers                   = (known after apply)
      + max_size                         = 10
      + metrics_granularity              = "1Minute"
      + min_size                         = 1
      + name                             = (known after apply)
      + name_prefix                      = (known after apply)
      + predicted_capacity               = (known after apply)
      + protect_from_scale_in            = false
      + service_linked_role_arn          = (known after apply)
      + target_group_arns                = (known after apply)
      + vpc_zone_identifier              = [
          + "subnet-12345678",
        ]
      + wait_for_capacity_timeout        = "10m"
      + warm_pool_size                   = (known after apply)

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = (known after apply)
        }

      + mixed_instances_policy {
          + instances_distribution {
              + on_demand_allocation_strategy            = (known after apply)
              + on_demand_base_capacity                  = (known after apply)
              + on_demand_percentage_above_base_capacity = (known after apply)
              + spot_allocation_strategy                 = (known after apply)
              + spot_instance_pools                      = (known after apply)
              + spot_max_price                           = (known after apply)
            }

          + launch_template {
              + launch_template_specification {
                  + launch_template_id   = (known after apply)
                  + launch_template_name = (known after apply)
                  + version              = (known after apply)
                }

              + override {
                  + instance_type     = (known after apply)
                  + weighted_capacity = (known after apply)

                  + instance_requirements {
                      + accelerator_manufacturers                               = (known after apply)
                      + accelerator_names                                       = (known after apply)
                      + accelerator_types                                       = (known after apply)
                      + allowed_instance_types                                  = (known after apply)
                      + bare_metal                                              = (known after apply)
                      + burstable_performance                                   = (known after apply)
                      + cpu_manufacturers                                       = (known after apply)
                      + excluded_instance_types                                 = (known after apply)
                      + instance_generations                                    = (known after apply)
                      + local_storage                                           = (known after apply)
                      + local_storage_types                                     = (known after apply)
                      + max_spot_price_as_percentage_of_optimal_on_demand_price = (known after apply)
                      + on_demand_max_price_percentage_over_lowest_price        = (known after apply)
                      + require_hibernate_support                               = (known after apply)
                      + spot_max_price_percentage_over_lowest_price             = (known after apply)

                      + accelerator_count {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + accelerator_total_memory_mib {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + baseline_ebs_bandwidth_mbps {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + memory_gib_per_vcpu {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + memory_mib {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + network_bandwidth_gbps {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + network_interface_count {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + total_local_storage_gb {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + vcpu_count {
                          + max = (known after apply)
                          + min = (known after apply)
                        }
                    }

                  + launch_template_specification {
                      + launch_template_id   = (known after apply)
                      + launch_template_name = (known after apply)
                      + version              = (known after apply)
                    }
                }
            }
        }

      + traffic_source {
          + identifier = (known after apply)
          + type       = (known after apply)
        }
    }

  # aws_db_instance.db will be created
  + resource "aws_db_instance" "db" {
      + address                               = (known after apply)
      + allocated_storage                     = 20
      + apply_immediately                     = false
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_target                         = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_name                               = "mydb"
      + db_subnet_group_name                  = (known after apply)
      + dedicated_log_volume                  = false
      + delete_automated_backups              = true
      + domain_fqdn                           = (known after apply)
      + endpoint                              = (known after apply)
      + engine                                = "mysql"
      + engine_lifecycle_support              = (known after apply)
      + engine_version                        = "8.0.26"
      + engine_version_actual                 = (known after apply)
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = (known after apply)
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t4g.micro"
      + iops                                  = (known after apply)
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + listener_endpoint                     = (known after apply)
      + maintenance_window                    = (known after apply)
      + master_user_secret                    = (known after apply)
      + master_user_secret_kms_key_id         = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = (known after apply)
      + nchar_character_set_name              = (known after apply)
      + network_type                          = (known after apply)
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = "default.mysql8.0"
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replica_mode                          = (known after apply)
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = false
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_throughput                    = (known after apply)
      + storage_type                          = (known after apply)
      + tags_all                              = (known after apply)
      + timezone                              = (known after apply)
      + username                              = "foo"
      + vpc_security_group_ids                = (known after apply)
    }

  # aws_launch_configuration.example will be created
  + resource "aws_launch_configuration" "example" {
      + arn                         = (known after apply)
      + associate_public_ip_address = (known after apply)
      + ebs_optimized               = (known after apply)
      + enable_monitoring           = true
      + id                          = (known after apply)
      + image_id                    = "ami-0c55b159cbfafe1f0"
      + instance_type               = "t2.micro"
      + key_name                    = (known after apply)
      + name                        = "example-launch-configuration"
      + name_prefix                 = (known after apply)

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + no_device             = (known after apply)
          + snapshot_id           = (known after apply)
          + throughput            = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + throughput            = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + db_instance_endpoint = (known after apply)

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

# terraform apply -auto-approve

aws_launch_template.example: Refreshing state... [id=lt-0c06d22d22baeb58c]
aws_db_instance.db: Refreshing state... [id=db-QIGIZ66DTT6B6EHXYMONOEZ4GY]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply":

  # aws_db_instance.db has been changed
  ~ resource "aws_db_instance" "db" {
      + address                               = "terraform-20241004154652467800000001.c1esgksseps1.us-east-1.rds.amazonaws.com"
      + arn                                   = "arn:aws:rds:us-east-1:585008051142:db:terraform-20241004154652467800000001"
      + availability_zone                     = "us-east-1d"
      + backup_retention_period               = 0
      + backup_target                         = "region"
      + backup_window                         = "06:46-07:16"
      + ca_cert_identifier                    = "rds-ca-rsa2048-g1"
      + customer_owned_ip_enabled             = false
      + deletion_protection                   = false
      + domain_dns_ips                        = []
      + enabled_cloudwatch_logs_exports       = []
      + endpoint                              = "terraform-20241004154652467800000001.c1esgksseps1.us-east-1.rds.amazonaws.com:3306"
      + engine_lifecycle_support              = "open-source-rds-extended-support"
      + engine_version_actual                 = "8.0.32"
      + hosted_zone_id                        = "Z2R2ITUGPM61AM"
      + iam_database_authentication_enabled   = false
        id                                    = "db-QIGIZ66DTT6B6EHXYMONOEZ4GY"
      + identifier                            = "terraform-20241004154652467800000001"
      + identifier_prefix                     = "terraform-"
      + iops                                  = 0
      + license_model                         = "general-public-license"
      + listener_endpoint                     = []
      + maintenance_window                    = "wed:09:50-wed:10:20"
      + master_user_secret                    = []
      + max_allocated_storage                 = 0
      + multi_az                              = false
      + network_type                          = "IPV4"
      + option_group_name                     = "default:mysql-8-0"
      + performance_insights_retention_period = 0
      + port                                  = 3306
      + replicas                              = []
      + resource_id                           = "db-QIGIZ66DTT6B6EHXYMONOEZ4GY"
      + status                                = "available"
      + storage_encrypted                     = false
      + storage_throughput                    = 0
      + storage_type                          = "gp2"
      + tags                                  = {}
      + tags_all                              = {}
        # (19 unchanged attributes hidden)
    }
  # aws_launch_template.example has been changed
  ~ resource "aws_launch_template" "example" {
        id                      = "lt-0c06d22d22baeb58c"
        name                    = "example-launch-template"
      + security_group_names    = []
      + tags                    = {}
      + vpc_security_group_ids  = []
        # (8 unchanged attributes hidden)
    }

Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the
following plan may include actions to undo or respond to these changes.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # aws_autoscaling_group.example will be created
  + resource "aws_autoscaling_group" "example" {
      + arn                              = (known after apply)
      + availability_zones               = (known after apply)
      + default_cooldown                 = (known after apply)
      + desired_capacity                 = (known after apply)
      + force_delete                     = false
      + force_delete_warm_pool           = false
      + health_check_grace_period        = 300
      + health_check_type                = (known after apply)
      + id                               = (known after apply)
      + ignore_failed_scaling_activities = false
      + load_balancers                   = (known after apply)
      + max_size                         = 10
      + metrics_granularity              = "1Minute"
      + min_size                         = 1
      + name                             = (known after apply)
      + name_prefix                      = (known after apply)
      + predicted_capacity               = (known after apply)
      + protect_from_scale_in            = false
      + service_linked_role_arn          = (known after apply)
      + target_group_arns                = (known after apply)
      + vpc_zone_identifier              = [
          + "subnet-035e49680f3da0f7e",
          + "subnet-037f4dcb7503b7388",
          + "subnet-04423432118c0b7d9",
          + "subnet-04fee9ec178ba1043",
          + "subnet-0717fa595b184d6f4",
          + "subnet-0856591be956d828e",
        ]
      + wait_for_capacity_timeout        = "10m"
      + warm_pool_size                   = (known after apply)

      + launch_template {
          + id      = "lt-0c06d22d22baeb58c"
          + name    = (known after apply)
          + version = "$Latest"
        }

      + mixed_instances_policy {
          + instances_distribution {
              + on_demand_allocation_strategy            = (known after apply)
              + on_demand_base_capacity                  = (known after apply)
              + on_demand_percentage_above_base_capacity = (known after apply)
              + spot_allocation_strategy                 = (known after apply)
              + spot_instance_pools                      = (known after apply)
              + spot_max_price                           = (known after apply)
            }

          + launch_template {
              + launch_template_specification {
                  + launch_template_id   = (known after apply)
                  + launch_template_name = (known after apply)
                  + version              = (known after apply)
                }

              + override {
                  + instance_type     = (known after apply)
                  + weighted_capacity = (known after apply)

                  + instance_requirements {
                      + accelerator_manufacturers                               = (known after apply)
                      + accelerator_names                                       = (known after apply)
                      + accelerator_types                                       = (known after apply)
                      + allowed_instance_types                                  = (known after apply)
                      + bare_metal                                              = (known after apply)
                      + burstable_performance                                   = (known after apply)
                      + cpu_manufacturers                                       = (known after apply)
                      + excluded_instance_types                                 = (known after apply)
                      + instance_generations                                    = (known after apply)
                      + local_storage                                           = (known after apply)
                      + local_storage_types                                     = (known after apply)
                      + max_spot_price_as_percentage_of_optimal_on_demand_price = (known after apply)
                      + on_demand_max_price_percentage_over_lowest_price        = (known after apply)
                      + require_hibernate_support                               = (known after apply)
                      + spot_max_price_percentage_over_lowest_price             = (known after apply)

                      + accelerator_count {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + accelerator_total_memory_mib {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + baseline_ebs_bandwidth_mbps {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + memory_gib_per_vcpu {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + memory_mib {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + network_bandwidth_gbps {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + network_interface_count {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + total_local_storage_gb {
                          + max = (known after apply)
                          + min = (known after apply)
                        }

                      + vcpu_count {
                          + max = (known after apply)
                          + min = (known after apply)
                        }
                    }

                  + launch_template_specification {
                      + launch_template_id   = (known after apply)
                      + launch_template_name = (known after apply)
                      + version              = (known after apply)
                    }
                }
            }
        }

      + traffic_source {
          + identifier = (known after apply)
          + type       = (known after apply)
        }
    }


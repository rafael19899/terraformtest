# terraformtest
terraformtest1

terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.70.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
root@rafael-Inspiron-3501:~/Área de Trabalho/repoterra/terraform/virginia# terraform plan
aws_launch_template.example: Refreshing state... [id=lt-0c06d22d22baeb58c]
aws_db_instance.db: Refreshing state... [id=db-QIGIZ66DTT6B6EHXYMONOEZ4GY]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create
  ~ update in-place
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

# aws_db_instance.db is tainted, so must be replaced
-/+ resource "aws_db_instance" "db" {
      ~ address                               = "terraform-20241004154652467800000001.c1esgksseps1.us-east-1.rds.amazonaws.com" -> (known after apply)
      ~ arn                                   = "arn:aws:rds:us-east-1:585008051142:db:terraform-20241004154652467800000001" -> (known after apply)
      ~ availability_zone                     = "us-east-1d" -> (known after apply)
      ~ backup_retention_period               = 0 -> (known after apply)
      ~ backup_target                         = "region" -> (known after apply)
      ~ backup_window                         = "06:46-07:16" -> (known after apply)
      ~ ca_cert_identifier                    = "rds-ca-rsa2048-g1" -> (known after apply)
      + character_set_name                    = (known after apply)
      - customer_owned_ip_enabled             = false -> null
      - deletion_protection                   = false -> null
      - domain_dns_ips                        = [] -> null
      + domain_fqdn                           = (known after apply)
      - enabled_cloudwatch_logs_exports       = [] -> null
      ~ endpoint                              = "terraform-20241004154652467800000001.c1esgksseps1.us-east-1.rds.amazonaws.com:3306" -> (known after apply)
      ~ engine_lifecycle_support              = "open-source-rds-extended-support" -> (known after apply)
      ~ engine_version_actual                 = "8.0.32" -> (known after apply)
      ~ hosted_zone_id                        = "Z2R2ITUGPM61AM" -> (known after apply)
      - iam_database_authentication_enabled   = false -> null
      ~ id                                    = "db-QIGIZ66DTT6B6EHXYMONOEZ4GY" -> (known after apply)
      ~ identifier                            = "terraform-20241004154652467800000001" -> (known after apply)
      ~ identifier_prefix                     = "terraform-" -> (known after apply)
      ~ iops                                  = 0 -> (known after apply)
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      ~ license_model                         = "general-public-license" -> (known after apply)
      ~ listener_endpoint                     = [] -> (known after apply)
      ~ maintenance_window                    = "wed:09:50-wed:10:20" -> (known after apply)
      ~ master_user_secret                    = [] -> (known after apply)
      + master_user_secret_kms_key_id         = (known after apply)
      - max_allocated_storage                 = 0 -> null
      + monitoring_role_arn                   = (known after apply)
      ~ multi_az                              = false -> (known after apply)
      + nchar_character_set_name              = (known after apply)
      ~ network_type                          = "IPV4" -> (known after apply)
      ~ option_group_name                     = "default:mysql-8-0" -> (known after apply)
      + performance_insights_kms_key_id       = (known after apply)
      ~ performance_insights_retention_period = 0 -> (known after apply)
      ~ port                                  = 3306 -> (known after apply)
      + replica_mode                          = (known after apply)
      ~ replicas                              = [] -> (known after apply)
      ~ resource_id                           = "db-QIGIZ66DTT6B6EHXYMONOEZ4GY" -> (known after apply)
      ~ skip_final_snapshot                   = false -> true
      + snapshot_identifier                   = (known after apply)
      ~ status                                = "available" -> (known after apply)
      - storage_encrypted                     = false -> null
      ~ storage_throughput                    = 0 -> (known after apply)
      ~ storage_type                          = "gp2" -> (known after apply)
      - tags                                  = {} -> null
      ~ tags_all                              = {} -> (known after apply)
      + timezone                              = (known after apply)
        # (18 unchanged attributes hidden)
    }

  # aws_launch_template.example will be updated in-place
  ~ resource "aws_launch_template" "example" {
        id                      = "lt-0c06d22d22baeb58c"
      ~ instance_type           = "t3.medium" -> "t3.large"
      ~ latest_version          = 2 -> (known after apply)
        name                    = "example-launch-template"
        tags                    = {}
        # (8 unchanged attributes hidden)
    }

Plan: 2 to add, 1 to change, 1 to destroy.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you
run "terraform apply" now.
root@rafael-Inspiron-3501:~/Área de Trabalho/repoterra/terraform/virginia# terraform apply -auto-approve
aws_launch_template.example: Refreshing state... [id=lt-0c06d22d22baeb58c]
aws_db_instance.db: Refreshing state... [id=db-QIGIZ66DTT6B6EHXYMONOEZ4GY]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create
  ~ update in-place
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

  # aws_db_instance.db is tainted, so must be replaced
-/+ resource "aws_db_instance" "db" {
      ~ address                               = "terraform-20241004154652467800000001.c1esgksseps1.us-east-1.rds.amazonaws.com" -> (known after apply)
      ~ arn                                   = "arn:aws:rds:us-east-1:585008051142:db:terraform-20241004154652467800000001" -> (known after apply)
      ~ availability_zone                     = "us-east-1d" -> (known after apply)
      ~ backup_retention_period               = 0 -> (known after apply)
      ~ backup_target                         = "region" -> (known after apply)
      ~ backup_window                         = "06:46-07:16" -> (known after apply)
      ~ ca_cert_identifier                    = "rds-ca-rsa2048-g1" -> (known after apply)
      + character_set_name                    = (known after apply)
      - customer_owned_ip_enabled             = false -> null
      - deletion_protection                   = false -> null
      - domain_dns_ips                        = [] -> null
      + domain_fqdn                           = (known after apply)
      - enabled_cloudwatch_logs_exports       = [] -> null
      ~ endpoint                              = "terraform-20241004154652467800000001.c1esgksseps1.us-east-1.rds.amazonaws.com:3306" -> (known after apply)
      ~ engine_lifecycle_support              = "open-source-rds-extended-support" -> (known after apply)
      ~ engine_version_actual                 = "8.0.32" -> (known after apply)
      ~ hosted_zone_id                        = "Z2R2ITUGPM61AM" -> (known after apply)
      - iam_database_authentication_enabled   = false -> null
      ~ id                                    = "db-QIGIZ66DTT6B6EHXYMONOEZ4GY" -> (known after apply)
      ~ identifier                            = "terraform-20241004154652467800000001" -> (known after apply)
      ~ identifier_prefix                     = "terraform-" -> (known after apply)
      ~ iops                                  = 0 -> (known after apply)
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      ~ license_model                         = "general-public-license" -> (known after apply)
      ~ listener_endpoint                     = [] -> (known after apply)
      ~ maintenance_window                    = "wed:09:50-wed:10:20" -> (known after apply)
      ~ master_user_secret                    = [] -> (known after apply)
      + master_user_secret_kms_key_id         = (known after apply)
      - max_allocated_storage                 = 0 -> null
      + monitoring_role_arn                   = (known after apply)
      ~ multi_az                              = false -> (known after apply)
      + nchar_character_set_name              = (known after apply)
      ~ network_type                          = "IPV4" -> (known after apply)
      ~ option_group_name                     = "default:mysql-8-0" -> (known after apply)
      + performance_insights_kms_key_id       = (known after apply)
      ~ performance_insights_retention_period = 0 -> (known after apply)
      ~ port                                  = 3306 -> (known after apply)
      + replica_mode                          = (known after apply)
      ~ replicas                              = [] -> (known after apply)
      ~ resource_id                           = "db-QIGIZ66DTT6B6EHXYMONOEZ4GY" -> (known after apply)
      ~ skip_final_snapshot                   = false -> true
      + snapshot_identifier                   = (known after apply)
      ~ status                                = "available" -> (known after apply)
      - storage_encrypted                     = false -> null
      ~ storage_throughput                    = 0 -> (known after apply)
      ~ storage_type                          = "gp2" -> (known after apply)
      - tags                                  = {} -> null
      ~ tags_all                              = {} -> (known after apply)
      + timezone                              = (known after apply)
        # (18 unchanged attributes hidden)
    }

  # aws_launch_template.example will be updated in-place
  ~ resource "aws_launch_template" "example" {
        id                      = "lt-0c06d22d22baeb58c"
      ~ instance_type           = "t3.medium" -> "t3.large"
      ~ latest_version          = 2 -> (known after apply)
        name                    = "example-launch-template"
        tags                    = {}
        # (8 unchanged attributes hidden)
    }


### PROVIDER VARS ###
variable region {}

variable account_id {}

variable role {}

### EC2 VARS ###
variable key_name {}

variable iam_instance_profile {
  default = ""
}

variable amazon_machine_image {}

variable aws_instance_type {}

variable aws_availability_zone {}

variable enable_monitoring {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled."
  default = true
}

variable vpc_security_group_ids {
  default = []
  type = "list"
}

variable vpc_subnet_id {
  default = ""
}

variable private_ip {
  default = ""
}

variable associate_public_ip_address {
  default = "false"
}

variable tags {
  default = {}
  type = "map"
}

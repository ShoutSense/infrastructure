### PROVIDER VARS ###
variable aws_region {
  default = "us-east-1"
}

variable aws_role {
  default = "developers"
}

variable aws_account_id {
  default = 436261401756
}

### DYNAMO VARS ###
variable campaigns_table_read_capacity {
  default = 5
}

variable campaigns_table_write_capacity {
  default = 5
}

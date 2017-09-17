### PROVIDER VARS ###
variable region {}

variable account_id {}

variable role {}

### BUCKET VARS ###
variable bucket_name {}

variable acl {
  default = "private"
}

variable rep_config_list {
  type = "list"
  default = []
}

variable enable_versioning {
  default = true
}

variable tags {
  type = "map"
  default = {}
}

variable force_destroy {
  description = "Force a successful destruction of bucket by remove its contents."
  default = false
}

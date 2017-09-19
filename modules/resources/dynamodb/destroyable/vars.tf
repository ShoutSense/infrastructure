### PROVIDER VARS ###
variable region {}

variable account_id {}

variable role {}

### DYNAMODB VARS ###
variable table_name {
  description = "The name for the Dynamo table to be created"
}

variable read_capacity {
  description = "The number of read units for this table"
}

variable write_capacity {
  description = "The number of write units for this table"
}

variable hash_key {
  description = "Attribute to use as the hash key (must be defined as an attribute record)"
}

variable range_key {
  description = "Attribute to use as the range key (must be defined as an attribute record)"
  default     = ""
}

variable attributes {
  description = "A list of maps, where each map is a single attribute with name/type"
  default     = []
  type        = "list"
}

variable stream_enabled {
  default     = false
}

variable stream_view_type {
  description = "Set if stream_enabled is true"
  default     = "NEW_IMAGE"
}

variable enable_ttl {
  default     = false
}

variable environment_type {}

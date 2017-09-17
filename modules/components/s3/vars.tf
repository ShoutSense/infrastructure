### PROVIDER VARS ###
variable region {}

variable account_id {}

variable role {}

### BUCKET VARS ###
variable bucket_name {}

variable enable_versioning {
  default = true
}

variable tags {
  type    = "map"
  default = {}
}

variable force_destroy {}

### OBJECT VARS ###
variable upload_count {
  default = 1
}

variable path_to_upload_list {
  description = "List of paths on bucket to upload to. Indexes relative to source_path_to_file_list."
  type = "list"
}

variable source_path_to_file_list {
  description = "List of files (paths) on system to upload to the bucket."
  type = "list"
}

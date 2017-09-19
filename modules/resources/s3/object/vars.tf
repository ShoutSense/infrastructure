variable region {}

variable account_id {}

variable role {}

### OBJECT VARS ###
variable object_count {
  default = 1
}

variable target_bucket_name {}

variable path_to_upload_list {
  type = "list"
}

variable source_path_to_file_list {
  type = "list"
}

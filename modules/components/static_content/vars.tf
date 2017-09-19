### PROVIDER VARS ###
variable region {}

variable account_id {}

variable role {}

### BUCKET VARS ###
variable dist_access_log_bucket_name {
  default = "dist_access_log_bucket"
}

variable force_destroy_access_log_bucket {
  default = true
}

variable environment_type {}

variable access_log_bucket_file_upload_count {}

variable log_bucket_file_upload_source_paths {
  description = "The access log bucket's file upload source paths."
  type = "list"
}

variable log_bucket_key_upload_paths {
  description = "The access log bucket's file upload destination keys."
  type = "list"
}

### CLOUDFRONT VARS ###
variable dist_origin_domain_name {}

variable dist_origin_id {}

variable dist_origin_access_identity_path {}

variable dist_ipv6_toggle {
  description = "boolean"
}

variable dist_general_comment {
  description = "The benign comment to put for the cloudfront distribution."
}

variable dist_default_root_object {}

variable dist_aliases {
  description = "The list of endpoint aliases to associate with distribution, like 'api.shoutsense.com'."
  type = "list"
}

variable dist_geo_restriction_type {
  description = "Any of 'none', 'whitelist', or 'blacklist'."
}

variable dist_geo_restriction_locations {
  description = "The list of locales (countries) which are subject to geo_restriction_type"
  type = "list"
}

variable dist_price_class {
  description = "One of 'PriceClass_All', 'PriceClass_200', or 'PriceClass_100'."
}

variable dist_include_cookies {}

variable log_bucket_logging_file_prefix {
  description = "The prefix to prepend a filename with in the access_log_bucket_name bucket."
  default = ""
}

variable dist_allowed_http_methods {
  type = "list"
}

variable dist_cached_http_methods {
  type = "list"
}

variable dist_forward_query_string {}

variable dist_forward_cookies_type {
  description = "You can specify 'all', 'none' or 'whitelist'. If 'whitelist', you must include the subsequent forwarded_cookies_whitelisted_names"
}

variable dist_forwarded_cookies_whitelisted_names {
  default = []
  type = "list"
}

### PROVIDER VARS ###
variable region {}

variable account_id {}

variable role {}

### CLOUDFRONT VARS ###
variable origin_domain_name {}

variable origin_id {}

variable origin_access_identity_path {}

variable ipv6_enabled {
  default = true
}

variable distribution_comment {}

variable default_root_object {
  default = "index.html"
}

variable aliases {
  description = "The list of endpoint aliases to associate with distribution, like 'api.shoutsense.com'."
  type = "list"
  default = []
}

variable geo_restriction_type {
  description = "Any of 'none', 'whitelist', or 'blacklist'."
  default = "none"
}

variable geo_restriction_locations {
  description = "The list of locales (countries) which are subject to geo_restriction_type"
  type = "list"
  default = []
}

variable price_class {
  description = "One of 'PriceClass_All', 'PriceClass_200', or 'PriceClass_100'."
}

variable include_cookies {}

variable access_log_bucket_name {}

variable logging_file_prefix {
  description = "The prefix to prepend a filename with in the access_log_bucket_name bucket."
  default = ""
}

variable tags {
  type    = "map"
  default = {}
}

variable cf_default_certificate {
  default = true
}

variable acm_certificate_arn {
  default = ""
}

variable iam_certificate_id {
  default = ""
}

variable ssl_support_method {
  description "Either 'vip' or 'sni-only'."
  default = "sni-only"
}

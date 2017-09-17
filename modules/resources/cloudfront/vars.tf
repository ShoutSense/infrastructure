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
  default = "sni-only"
}

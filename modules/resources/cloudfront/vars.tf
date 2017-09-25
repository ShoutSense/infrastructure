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

variable lambda_function_association_list {
  description = "List of lambda map-blocks. Refer to terraform cloudfront_distribution page for block configuration."
  default = []
  type = "list"
}

variable include_cookies {}

variable access_log_bucket_name {}

variable logging_file_prefix {
  description = "The prefix to prepend a filename with in the access_log_bucket_name bucket."
  default = ""
}

variable allowed_http_methods {
  type = "list"
}

variable cached_http_methods {
  type = "list"
}

variable forward_query_string {}

variable forward_cookies {
  description = "You can specify 'all', 'none' or 'whitelist'. If 'whitelist', you must include the subsequent forwarded_cookies_whitelisted_names"
}

variable forwarded_cookies_whitelisted_names {
  default = []
  type = "list"
}

variable viewer_protocol_policy {
  description = "One of 'allow-all', 'https-only', or 'redirect-to-https'."
  #default = "allow-all"
}

variable cache_min_ttl {
  default = 0
  description = "The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated."
}

variable cache_default_ttl {
  default = 3600
  description = "The default amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request in the absence of an Cache-Control max-age or Expires header."
}

variable cache_max_ttl {
  default = 86400
  description = "The maximum amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated."
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

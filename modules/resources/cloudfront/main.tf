resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = "${var.origin_domain_name}"
    origin_id   = "${var.origin_id}"

    s3_origin_config {
      origin_access_identity = "${var.origin_access_identity_path}"
    }
  }

  enabled             = true
  is_ipv6_enabled     = "${var.ipv6_enabled}"
  comment             = "${var.distribution_comment}"
  default_root_object = "${var.default_root_object}"
  aliases             = ["${var.aliases}"]
  price_class         = "${var.price_class}"

  lambda_function_association = "${var.lambda_function_association_list}"

  logging_config {
    include_cookies = "${var.include_cookies}"
    bucket          = "${var.access_log_bucket_name}"
    prefix          = "${var.logging_file_prefix}"
  }

  default_cache_behavior {
    allowed_methods  = ["${var.allowed_http_methods}"]
    cached_methods   = ["${var.cached_http_methods}"]
    target_origin_id = "${var.origin_id}"

    forwarded_values {
      query_string = "${var.forward_query_string}"

      cookies {
        forward = "${var.forward_cookies}"
        whitelisted_names = ["${var.forwarded_cookies_whitelisted_names}"]
      }
    }

    viewer_protocol_policy = "${var.viewer_protocol_policy}"
    min_ttl                = "${var.cache_min_ttl}"
    default_ttl            = "${var.cache_default_ttl}"
    max_ttl                = "${var.cache_max_ttl}"
  }

  restrictions {
    geo_restriction {
      restriction_type = "${var.geo_restriction_type}"
      locations        = ["${var.geo_restiction_locations}"]
    }
  }

  tags = "${var.tags}"

  viewer_certificate {
    cloudfront_default_certificate = "${var.cf_default_certificate}"
    acm_certificate_arn            = "${var.acm_certificate_arn}"
    iam_certificate_id             = "${var.iam_certificate_id}"
    ssl_support_method             = "${var.ssl_support_method}"
  }
}

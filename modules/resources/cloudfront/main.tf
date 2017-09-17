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

  logging_config {
    include_cookies = "${var.include_cookies}"
    bucket          = "${var.access_log_bucket_name}"
    prefix          = "${var.logging_file_prefix}"
  }

#/ TODO
  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "myS3Origin"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

#/
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

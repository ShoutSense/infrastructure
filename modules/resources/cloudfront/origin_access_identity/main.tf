resource "aws_cloudfront_origin_access_identity" "identity" {
  comment = "${var.identity_comment}"
}

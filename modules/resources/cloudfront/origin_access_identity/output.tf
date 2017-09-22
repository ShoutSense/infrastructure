output OAD_id {
  value = "${aws_cloudfront_origin_access_identity.identity.id}"
}

output OAI_iam_arn {
  value = "${aws_cloudfront_origin_access_identity.identity.iam_arn}"
}

output OAI_s3_canonical_user_id {
  value = "${aws_cloudfront_origin_access_identity.identity.s3_canonical_user_id}"
}

output cloudfront_OAI_path {
  value = "${aws_cloudfront_origin_access_identity.identity.cloudfront_access_identity_path}"
}

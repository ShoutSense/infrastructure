module "cloudfront_content_origin_bucket" {
  source                   = "../../../../modules/resources/s3/bucket"
  region                   = "${var.aws_region}"
  account_id               = "${var.aws_account_id}"
  role                     = "${var.aws_role}"
  bucket_name              = "ss_cloudfront_content_origin"
  force_destroy            = "true"
  tags = {
    Environment = "dev"
  }
}

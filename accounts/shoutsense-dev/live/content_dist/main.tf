module "s3_website_content_upload" {
  source                   = "../../../../modules/resources/s3/object"
  region                   = "${var.aws_region}"
  account_id               = "${var.aws_account_id}"
  role                     = "${var.aws_role}"
  object_count             = ""
  target_bucket_name       = ""
  path_to_upload_list      = ["${var.env_name}/"]
  source_path_to_file_list = [""]
  #### MAKE OUTPUT HAVE A BOOLEAN VALUE CALLED 'IS_UPLOADED' SO THAT WHEN IT'S
  #### UPLOADED THE DIST WILL BE CREATED ???
}

module "static_content_cloudfront_dist" {
  source              = "../../../../modules/components/static_content_dist"
  region              = "${var.aws_region}"
  account_id          = "${var.aws_account_id}"
  role                = "${var.aws_role}"
}

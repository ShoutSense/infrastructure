module "dist_access_log_bucket" {
  source                      = "../../../../modules/components/s3"
  # Provider
  region                      = "${var.region}"
  role                        = "${var.role}"
  account_id                  = "${var.account_id}"
  # Bucket
  bucket_name                 = "${var.dist_access_log_bucket_name}"
  force_destroy               = "${var.force_destroy_bucket}"
  tags                        = {
    Environment               = "${var.environment_type}"
  }
  # Uploads
  upload_count                = "${access_log_bucket_file_upload_count}"
  source_path_to_file_list    = ["${var.log_bucket_file_upload_source_paths}"]
  path_to_upload_list         = ["${var.log_bucket_key_upload_paths}"]
}


module "cloudfront_distribution" {
  source                      = "../../resources/cloudfront"
  # Provider
  region                      = "${var.region}"
  role                        = "${var.role}"
  account_id                  = "${var.account_id}"
  # Distribution
  origin_domain_name          = "${var.dist_origin_domain_name}"
  origin_id                   = "${var.dist_origin_id}"
  origin_access_identity_path = "${var.dist_origin_access_identity_path}"
  ipv6_enabled                = "${var.dist_ipv6_toggle}"
  distribution_comment        = "${var.dist_general_comment}"
  default_root_object         = "${var.dist_default_root_object}"
  aliases                     = "${var.dist_aliases}"
  geo_restriction_type        = "${var.dist_geo_restriction_type}"
  geo_restriction_locations   = "${var.dist_geo_restriction_locations}"
  price_class                 = "${var.dist_price_class}"
  include_cookies             = "${var.dist_include_cookies}"
  access_log_bucket_name      = "${module.dist_access_log_bucket.bucket_name}"
  logging_file_prefix         = "${var.log_bucket_logging_file_prefix}"
}

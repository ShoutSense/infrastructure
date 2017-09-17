# Module for a bucket with initial upload at same time
module "bucket" {
  source              = "../../resources/s3/bucket"
  region              = "${var.region}"
  role                = "${var.role}"
  account_id          = "${var.account_id}"
  bucket_name         = "${var.bucket_name}"
  enable_versioning   = "${var.enable_versioning}"
  tags                = "${var.tags}"
  force_destroy       = "${var.force_destroy}"
}

module "upload" {
  source              = "../../resources/s3/object"
  region              = "${var.region}"
  role                = "${var.role}"
  account_id          = "${var.account_id}"
  object_count        = "${var.upload_count}"
  target_bucket_name  = "${module.bucket.bucket_name}"
  path_to_upload      = "${var.path_to_upload_list[count.index]}"
  source_path_to_file = "${var.source_path_to_file_list[count.index]}"
}

resource "aws_s3_bucket" "template" {
  bucket        = "${var.bucket_name}"
  acl           = "${var.acl}"
  replication_configuration = "${var.rep_config_list}"

  versioning {
    enabled     = "${var.enable_versioning}"
  }

  tags          = "${var.tags}"
  force_destroy = "${var.force_destroy}"
}

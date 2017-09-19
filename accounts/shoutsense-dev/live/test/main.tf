module "s3_with_upload_test" {
  source = "../../../../modules/components/s3"
  # Provider
  region = "us-east-1"
  role   = "developers"
  account_id = 436261401756
  # Bucket
  bucket_name = "shoutsense_test_123"
  force_destroy = true
  tags = {
    Environment = "dev"
  }
  # Uploads
  upload_count = 2
  source_path_to_file_list = ["test_uploads/.keepme", "test_uploads/keepme2"]
  path_to_upload_list = [".keepme", "keepme2"]
}

# module "cloudfront_test" {
#   source = "../../../../modules/components/cloudfront"
#   region = "${var.region}"
#   account_id = "${var.account_id}"
#   role = "${var.role}"
# }

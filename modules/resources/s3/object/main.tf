resource "aws_s3_bucket_object" "object" {
  bucket = "${var.target_bucket_name}"
  key    = "${var.path_to_upload}"
  source = "${var.source_path_to_file}"
  etag   = "${md5(file(var.source_path_to_file))}"
}

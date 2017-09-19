resource "aws_s3_bucket_object" "object" {
  count  = "${var.object_count}"
  bucket = "${var.target_bucket_name}"
  key    = "${var.path_to_upload_list[count.index]}"
  source = "${var.source_path_to_file_list[count.index]}"
  etag   = "${md5(file(var.source_path_to_file_list[count.index]))}"
}

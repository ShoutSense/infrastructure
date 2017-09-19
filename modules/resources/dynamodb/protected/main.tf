resource "aws_dynamodb_table" "dynamodb-table-template-protected" {
  name              = "${var.table_name}"
  read_capacity     = "${var.read_capacity}"
  write_capacity    = "${var.write_capacity}"
  hash_key          = "${var.hash_key}"
  range_key         = "${var.range_key}"
  stream_enabled    = "${var.stream_enabled}"
  stream_view_type  = "${var.stream_view_type}"
  attribute         = "${var.attributes}"

  ttl {
    attribute_name  = "TimeToExist"
    enabled         = "${var.enable_ttl}"
  }

  tags {
    Environment     = "${var.environment_type}"
  }

  lifecycle {
    prevent_destroy = true
  }
}

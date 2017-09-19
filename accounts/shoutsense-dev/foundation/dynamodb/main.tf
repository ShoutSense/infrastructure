module "campaigns_table" {
  source              = "../../../../modules/resources/dynamodb/destroyable"
  region              = "${var.aws_region}"
  account_id          = "${var.aws_account_id}"
  role                = "${var.aws_role}"
  environment_type    = "dev"
  table_name          = "campaigns"
  hash_key            = "campaignId"
  read_capacity       = "${var.campaigns_table_read_capacity}"
  write_capacity      = "${var.campaigns_table_write_capacity}"
  stream_enabled      = true

  attributes = [
    {
      name = "campaignId"
      type = "S"
    },
  ]
}

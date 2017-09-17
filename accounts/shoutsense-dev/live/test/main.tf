module "s3_test_bucket" {
  source = "../../../../modules/resources/s3/bucket"
  region = "us-east-1"
  role   = "developers"
  account_id = 436261401756
  bucket_name = "test1233578457483758"
  tags = {
    Type = "test"
  }
  force_destroy = true
}

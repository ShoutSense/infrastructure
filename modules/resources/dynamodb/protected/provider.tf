provider "aws" {
  profile = "ShoutSense"
  region = "${var.region}"

  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.role}"
  }
}

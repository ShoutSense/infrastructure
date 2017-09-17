terragrunt = {
  remote_state {
    backend = "s3"
    config {
      profile        = "ShoutSense"
      bucket         = "shoutsense_terraform_states"
      key            = "shoutsense-dev/live/${get_env("TF_VAR_env_name", "MISSING_ENV_NAME")}/${path_relative_to_include()}/terraform.tfstate"
      region         = "us-east-1"
      encrypt        = true
      kms_key_id     = "arn:aws:kms:us-east-1:609856111332:alias/s3"
      dynamodb_table = "terraform_dev_state_locks"
    }
  }
}

terraform {
  # Force Terraform to keep trying to acquire a lock for up to 20 minutes
  # if someone else already has the lock.
  extra_arguments "retry_lock" {
    commands = [
      "init",
      "apply",
      "refresh",
      "import",
      "plan",
      "taint",
      "untaint"
    ]

    arguments = [
      "-lock-timeout=20m"
    ]
  }
}

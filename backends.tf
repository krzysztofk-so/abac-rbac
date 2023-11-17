terraform {
  backend "s3" {
    bucket = "tf-sellerx-sso-iam"
    key    = "terraform/state_sso_iam_abac"
    region = "eu-central-1"
  }
}

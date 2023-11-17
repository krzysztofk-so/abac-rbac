provider "aws" {
  region = "eu-central-1"
  #shared_credentials_file = "/Users/krzysztof.kasprzak@sellerx.com/.aws/credentials"
  profile                 = "sellerx"
  default_tags {
    tags = {
      "map-migrated" = "mig39405"
    }
  }
}

locals {
  groups = {
    "aws-access-administrator" = {
      display_name  = "aws-access-administrator"
      custom_policy = "false"
      job = "arn:aws:iam::aws:policy/AdministratorAccess"
      aws_accounts = "316942367311,262914793784"
    },
    "aws-access-developer" = {
      display_name  = "aws-access-developer"
      custom_policy = "false"
      job = "arn:aws:iam::aws:policy/PowerUserAccess"
      aws_accounts = "316942367311,262914793784"
    },
    "aws-access-datascientist" = {
      display_name  = "aws-access-datascientist"
      custom_policy = "false"
      job = "arn:aws:iam::aws:policy/job-function/DataScientist"
      aws_accounts = "316942367311,262914793784"
    },
    "aws-access-billing" = {
      display_name  = "aws-access-billing"
      custom_policy = "false"
      job = "arn:aws:iam::aws:policy/job-function/Billing"
      aws_accounts = "703886664977"
    },
    "aws-access-dataanalytics" = {
      display_name  = "aws-access-dataanalytics"
      custom_policy = "true"
      job = "arn:aws:iam::aws:policy/ReadOnlyAccess"
      aws_accounts = "316942367311,262914793784"
    },
    "aws-access-analyticsengineer" = {
      display_name  = "aws-access-analyticsengineer"
      custom_policy = "true"
      job = "arn:aws:iam::aws:policy/SecurityAudit"
      aws_accounts = "316942367311,262914793784"
    },
  }
}

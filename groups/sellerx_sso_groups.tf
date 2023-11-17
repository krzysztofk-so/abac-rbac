module "groups_creation" {
  source = "../modules/services/groups_creation"
  for_each              = local.groups
  display_name        = each.value.display_name
  custom_policy = each.value.custom_policy
  job = each.value.job
  #custom_policy_def = var.permission_set_arn
  iam_policy_document_json = var.iam_policy_document_json

  target_id = {
    for account in split(",", each.value.aws_accounts) : account => {
      "account" = account
    }
  }

}

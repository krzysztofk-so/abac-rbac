#main
data "aws_ssoadmin_instances" "sso" {}

module "groups" {
  source = "./groups"
  #permission_set_arn = module.custom_policies.permission_set_arn
  iam_policy_document_json = module.custom_policies.iam_policy_document_json
}

module "users" {
  source = "./users"
  module_ids_group_sso = module.groups.module_ids_group_sso  
}

module "custom_policies" {
  source = "./custom_policies"
}

resource "aws_identitystore_group" "sso_group" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  display_name = var.display_name
}

resource "aws_ssoadmin_permission_set" "sso_permission_set" {
  name        = var.display_name
  instance_arn = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
}

resource "aws_ssoadmin_managed_policy_attachment" "sso_managed_policy" {
  count              = var.custom_policy == "false" ? 1 : 0
  instance_arn       = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  managed_policy_arn = var.job
  permission_set_arn = aws_ssoadmin_permission_set.sso_permission_set.arn
}

resource "aws_ssoadmin_permission_set_inline_policy" "iam_policy_document_json" {
  count              = var.custom_policy == "true" ? 1 : 0
  inline_policy      = var.iam_policy_document_json
  instance_arn       = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  permission_set_arn = aws_ssoadmin_permission_set.sso_permission_set.arn
}

resource "aws_ssoadmin_account_assignment" "sso_account_assignment" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  permission_set_arn = aws_ssoadmin_permission_set.sso_permission_set.arn
  for_each           = var.target_id

  target_id          = each.value.account
  target_type 	     = "AWS_ACCOUNT"

  principal_id       = aws_identitystore_group.sso_group.group_id
  principal_type     = "GROUP"
  depends_on = [
    aws_identitystore_group.sso_group,
    aws_ssoadmin_permission_set.sso_permission_set,
    aws_ssoadmin_managed_policy_attachment.sso_managed_policy   
  ]
}

output "module_test_policy" {
  description = "module_test_policy"
  value       = var.custom_policy
}

output "aws_identitystore_group_sso_group" {
  description = "aws_identitystore_group_sso_group"
  value       = aws_identitystore_group.sso_group.group_id
}

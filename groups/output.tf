output "policy_document" {
  description = "policy_document"
  value       = var.iam_policy_document_json
}

output "module_test_policy_group" {
  description = "module_test_policy_group"
  value       = { for k, v in module.groups_creation : k => v.module_test_policy }
}

output "module_ids_group_sso" {
  description = "module_ids_group_sso"
  value       = { for k, v in module.groups_creation : k => v.aws_identitystore_group_sso_group }
}

#output "permission_set_arn" {
#  value = aws_ssoadmin_permission_set.permissions-dataalytics.arn
#}

output "iam_policy_document_json" {
  description = "The JSON content of the IAM policy document"
  value       = data.aws_iam_policy_document.aws-access-dataalytics-custom-policy-doc.json
}

variable "permissions_common_actions_extended" {
  type = list(string)
  default = [
       "sagemaker:List*",
       "sagemaker:Get*",
       "sagemaker:Describe*",
       "scheduler:List*",
       "scheduler:Get*",
       "scheduler:Describe*",
       "schemas:List*",
       "schemas:Get*",
       "schemas:Describe*",
       "kms:List*",
       "kms:Describe*",
       "kms:Get*",
    ]
}
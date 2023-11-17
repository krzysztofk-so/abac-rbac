variable "sso_group_id" {
    type = any
    default = []
}

variable "target_id" {
  description = "list of aws accounts"
  type = map(object({
    account          = string
  }))

}

variable "display_name" {
  type    = string
  default = null
}

variable "custom_policy" {
  type    = string
  default = null
}

variable "iam_policy_document_json" {
  type    = string
  default = null
}

#variable "custom_policy_def" {
#  description = "list of policies"
#  type = map(object({
#    policy          = string
#  }))
#
#}

variable "job" {
  type    = string
  default = null
}

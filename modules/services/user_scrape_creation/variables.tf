variable "module_ids_group_sso" {
  type    = any
  default = ""
}

variable "user_name" {
  type    = string
  default = null
}

variable "group_id" {
  type    = map(any)
  default = null
}


variable "display_name" {
  type    = string
  default = null
}

variable "scim_sso" {
  type    = string
  default = null
}

variable "given_name" {
  type    = string
  default = null
}

variable "family_name" {
  type    = string
  default = null
}

variable "email" {
  type    = string
  default = null
}




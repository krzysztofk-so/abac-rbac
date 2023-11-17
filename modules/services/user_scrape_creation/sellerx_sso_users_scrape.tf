data "aws_identitystore_user" "sso_user" {
  count              = var.scim_sso == "true" ? 1 : 0
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  alternate_identifier {
    unique_attribute {
      attribute_path  = "UserName"
      attribute_value = var.user_name
    }
  }
}

resource "aws_identitystore_user" "sso_user" {
  count              = var.scim_sso == "false" ? 1 : 0
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  display_name = var.display_name
  user_name  = var.user_name
  
  name {
    given_name  = var.given_name
    family_name = var.family_name
  }

  emails {
    value = var.email
  }

  phone_numbers {
    value = "1234567"
  }

}

resource "aws_identitystore_group_membership" "sso_group_membership" {
  for_each           = var.group_id
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  group_id          = each.value.sso_group
  member_id   = var.scim_sso == "true" ? data.aws_identitystore_user.sso_user[0].user_id : aws_identitystore_user.sso_user[0].user_id 
}

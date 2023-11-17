module "user_scrape_creation" {
  source = "../modules/services/user_scrape_creation"

  for_each      = local.sso_users
  user_name     = each.value.user_name
  display_name  = each.value.display_name
  scim_sso      = each.value.scim_sso
  given_name    = each.value.name.given_name
  family_name   = each.value.name.family_name
  email         = each.value.emails.value
  module_ids_group_sso = var.module_ids_group_sso
  
    group_id = {
    for sso_group in split(",", each.value.groups) : sso_group => {
      sso_group = var.module_ids_group_sso[sso_group]
    }
  }
}

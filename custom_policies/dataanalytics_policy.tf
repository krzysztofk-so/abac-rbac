data "aws_iam_policy_document" "aws-access-dataalytics-custom-policy-doc" {

  statement {
    sid = "commonAccessExtended"
    actions = var.permissions_common_actions_extended
    resources = var.permissions_common_resources_extended
    #condition {
    #  test     = "StringEquals"
    #  variable = "aws:SourceAccount"
    #  values   = ["316942367311"]
    #}
  }

  statement {
    sid = "commonAccess"
    actions = var.permissions_common_actions
    resources = var.permissions_common_resources
    #condition {
    #  test     = "StringEquals"
    #  variable = "aws:SourceAccount"
    #  values   = ["316942367311"]
    #}
  }

  statement {
    sid = "AllActionsSnowflakeAdhocUploadsS3"
    actions = var.dataAnalytics_permissions_actions_snowflake-adhoc-uploads_s3
    resources = var.dataAnalytics_permissions_resource_snowflake-adhoc-uploads_s3
    #condition {
    #  test     = "StringEquals"
    #  variable = "aws:SourceAccount"
    #  values   = ["316942367311"]
    #}
  }

  statement {
    sid = "ReadBridgeXBuckets"
    actions = var.dataAnalytics_permissions_actions_read_bridgex_s3
    resources = var.dataAnalytics_permissions_resource_read_bridgex_s3
    #condition {
    #  test     = "StringEquals"
    #  variable = "aws:SourceAccount"
    #  values   = ["316942367311"]
    #}
  }

  statement {
    sid = "ReadSellerXKWCMySQL"
    actions = var.dataAnalytics_permissions_actions_read_kwc-mysql_s3
    resources = var.dataAnalytics_permissions_resource_read_kwc-mysql_s3
    #condition {
    #  test     = "StringEquals"
    #  variable = "aws:SourceAccount"
    #  values   = ["316942367311"]
    #}
  }

  statement {
    sid = "MwaaConsoleAccess"
    actions = var.dataAnalytics_permissions_actions_read_mwaa
    resources = var.dataAnalytics_permissions_resource_read_mwaa
    #condition {
    #  test     = "StringEquals"
    #  variable = "aws:SourceAccount"
    #  values   = ["316942367311"]
    #}
  }

}

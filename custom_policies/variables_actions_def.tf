variable "dataAnalytics_permissions_actions_snowflake-adhoc-uploads_s3" {
  type = list(string)
  default = [
      "s3:*",
    ]
}

variable "dataAnalytics_permissions_actions_read_bridgex_s3" {
  type = list(string)
  default = [
      "s3:GetObject",
    ]
}

variable "dataAnalytics_permissions_actions_read_kwc-mysql_s3" {
  type = list(string)
  default = [
      "s3:GetObject",
    ]
}

variable "dataAnalytics_permissions_actions_read_mwaa" {
  type = list(string)
  default = [
      "airflow:CreateWebLoginToken",
    ]
}
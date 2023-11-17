variable "dataAnalytics_permissions_resource_snowflake-adhoc-uploads_s3" {
  type = list(string)
  default = [
      "arn:aws:s3:::snowflake-adhoc-uploads/*",
    ]
}

variable "dataAnalytics_permissions_resource_read_bridgex_s3" {
  type = list(string)
  default = [
       "arn:aws:s3:::bridgex-amazon-production/*",
       "arn:aws:s3:::bridgex-amazon-staging/*",
       "arn:aws:s3:::bridgex-walmart-production/*",
       "arn:aws:s3:::bridgex-walmart-staging/*",
       "arn:aws:s3:::bridgex-channel-engine-staging/*",
       "arn:aws:s3:::bridgex-channel-engine-production/*"
    ]
}

variable "dataAnalytics_permissions_resource_read_kwc-mysql_s3" {
  type = list(string)
  default = [
       "arn:aws:s3:::sellerx-kwc-mysql/*"
    ]
}

variable "dataAnalytics_permissions_resource_read_mwaa" {
  type = list(string)
  default = [
      "arn:aws:airflow:eu-central-1:316942367311:*/sellerx-managed-airflow-222",
      "arn:aws:airflow:eu-central-1:316942367311:*/sellerx-managed-airflow-222/*"
    ]
}
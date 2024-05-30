#----------------------------------------
# Creating Amazon S3 bucket to hold source data for wealthco
#--------------------------------------

#------------------------------------------                     
module "wealthco_data_uploads_s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.1"

  bucket = "${var.environment}-wealthco-data-upload-${local.random_pet}"
  #  acl    = "private"                                         



}

output "wealthco_data_uploads_s3_bucket" {
  description = "The name of the S3 bucket for wealthco data uploads"
  value       = module.wealthco_data_uploads_s3_bucket.s3_bucket_id
}

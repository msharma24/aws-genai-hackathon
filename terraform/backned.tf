terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket = "sls-ms-terrraform-state"
    key    = "backend.tfstate"
    region = "us-east-1"

  }
}

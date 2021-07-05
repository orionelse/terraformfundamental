terraform {
  backend "s3" {
    bucket   = "<YOUR-S3-BUCKET-NAME>"
    key     = "<folder>/remotedemo.tfstate"
    region  = "ap-southeast-1"
    access_key = "PUT-YOUR-ACCESS-KEY-HERE"
    secret_key = "PUT-YOUR-SECRET-KEY-HERE"
  }
}

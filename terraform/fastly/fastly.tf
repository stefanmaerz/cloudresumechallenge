# Terraform 0.13+ requires providers to be declared in a "required_providers" block
terraform {
  required_providers {
    fastly = {
      source  = "fastly/fastly"
      version = ">= 2.2.1"
    }
  }
}


# Create a Service
resource "fastly_service_vcl" "demo" {
  name = "demofastly"

  domain {
    name    = "demo.notexample98763746.com"
    comment = "demo"
  }
  #TODO: Update the domain name after you've deleted the stefanmaerz.com domain

  backend {
    address       = "stefanmaerz.com.s3-website.us-east-2.amazonaws.com"
    name          = "stefanmaerz.com"
    port          = 80
    override_host = "stefanmaerz.com.s3-website.us-east-2.amazonaws.com"
  }

  header {
    destination = "http.x-amz-request-id"
    type        = "cache"
    action      = "delete"
    name        = "remove x-amz-request-id"
  }

  gzip {
    name          = "file extensions and content types"
    extensions    = ["css", "js"]
    content_types = ["text/html", "text/css"]
  }

  force_destroy = true
}

#$resource "aws_s3_bucket" "website" {
# bucket = "demo.notexample.com"
#  acl    = "public-read"
#
#  website {
#    index_document = "index.html"
#    error_document = "error.html"
#  }
#}



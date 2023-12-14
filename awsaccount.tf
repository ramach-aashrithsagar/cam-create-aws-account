terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

data "aws_organizations_organization" "cloud_org" {
}

resource "aws_organizations_account" "account" {
  email = var.root_email
  name = var.account_name
  tags = var.tags
  parent_id = var.org_unit_id == null ? data.aws_organizations_organization.cloud_org.roots[0].id : var.org_unit_id
}



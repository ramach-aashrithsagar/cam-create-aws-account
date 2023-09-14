terraform {
  required_providers {
    aws = "~> 3.79.0"
  }

  provider "aws" {
    region = var.region
  }

  resource "aws_organizations_account" "account" {
    email = var.root_email
    name = var.account_name
    tags = var.tags
  }

  resource "aws_organizations_organizational_unit" "ou" {
    name = var.ou_name
    parent_id = var.parent_id
  }

  resource "aws_organizations_account_association" "account_association" {
    account_id = aws_organizations_account.account.id
    organizational_unit_id = aws_organizations_organizational_unit.ou.id
  }
}


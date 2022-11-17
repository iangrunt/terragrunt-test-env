terraform {
  source = "${local.source_base_url}?ref=v0.0.1"
}

locals {
  source_base_url = "git::git@github.com:iangrunt/terraform-null-input-output.git"

  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_vars  = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

inputs = {
  input = "The common configuration for Terragrunt is working!"
}

terraform {
  source = "${include.envcommon.locals.terraform_module_git_repo}?ref=v0.0.1"
}

include "root" {
  path = find_in_parent_folders()
}

include "envcommon" {
  path   = "${dirname(find_in_parent_folders())}/_envcommon/fake-module-for-testing/common-config.hcl"
  expose = true
}

locals {
}

inputs = {}

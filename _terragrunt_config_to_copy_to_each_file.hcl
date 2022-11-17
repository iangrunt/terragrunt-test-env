terraform {
  source = "${include.envcommon.locals.source_base_url}?ref=v0.35.0"
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

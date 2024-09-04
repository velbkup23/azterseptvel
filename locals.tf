locals {

  ste_dets = [
    for idx, stg in var.vellabstact : {
      name                     = format("st%s%s", idx + 1, stg.name)
      account_replication_type = stg.account_replication_type
      account_kind             = stg.account_kind
      account_tier             = stg.account_tier
      config_pep               = stg.config_pep
      sub_resources            = stg.sub_resources
    }
  ]

  ste_pep = [
    for s in local.ste_dets : s
    if s.config_pep == true

  ]

}
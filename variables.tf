variable "vellabstact" {
  type = list(object({
    name                     = optional(string)
    account_replication_type = optional(string)
    account_kind             = optional(string)
    account_tier             = optional(string)
    config_pep               = optional(bool)
    sub_resources            = optional(string)

  }))


}

variable "velsubnet" {
  type    = list(string)
  default = ["10.0.0.16/29", "10.0.0.24/29"]
}

# variable "pepconfig" {
#   type = list(object({


#   }))
# }
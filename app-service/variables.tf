variable "name_rg" {
  type = string
}

variable "location" {
  type = string
}

variable "app_service_plans" {
  type = map(object({
    name     = string
    location = string
    name_rg  = string
    os_type  = string
    sku_name = string
  }))
}

variable "web_apps" {
  type = map(object({
    name              = string
    location          = string
    name_rg           = string
    service_plan_name = string
    https_only        = bool
  }))
}

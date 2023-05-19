variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "address_prefixes" {
  type = list(string)
}

variable "public_ip_name" {
  type = string
}

variable "allocation_method" {
  type = string
}

variable "nsg_name" {
  type = string
}

variable "nic_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "virtual_machine_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "location" {
  type = string
}

variable "security_rules" {
  type = map(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = {}
}

variable "size-hd" {
  type = string
}

variable "account_tier" {
  type = string
}

variable "account_replication_type" {
  type = string
}

variable "name_ip_configuration" {
  type = string
}

variable "private_ip_address_allocation" {
  type = string
}
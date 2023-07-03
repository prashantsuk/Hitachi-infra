variable location {
  type        = string
  default     = ""
  description = " The location/region where the virtual network is created"
}
variable azurerm_resource_group_name {
  type        = string
  default     = ""
  description = "The name of the resource group in which to create the virtual"
}
variable azurerm_virtual_network_name {
  type        = string
  default     = ""
  description = " The name of the virtual network."
}
variable azurerm_public_ip_name {
  type        = string
  default     = ""
  description = "description"
}
variable azurerm_application_gateway_name {
  type        = string
  default     = ""
  description = "description"
}
variable gateway_ip_configuration_name {
  type        = string
  default     = ""
  description = "description"
}
variable address_prefixes {
  type        = list(string)
  default     = [""]
  description = "The address space that is used by the virtual network."
}





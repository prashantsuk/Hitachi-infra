variable "resource_group_name" {
  type        = string
  default     = ""
  description = "description"
}
variable "vnetwork_name" {
  type        = string
  default     = ""
  description = "description"
}
variable "location" {
  type        = string
  default     = ""
  description = "description"
}
variable "vnet_address_space" {
  type        = list(string)
  default     = [""]
  description = "The address space that is used by the virtual network."
}
variable "firewall_subnet_address_prefix" {
  type        = list(string)
  default     = [""]
  description = "description"
}
variable "gateway_subnet_address_prefix" {
  type        = list(string)
  default     = [""]
  description = "description"
}
variable "create_network_watcher" {
  type        = bool
  default     = false
  description = "description"
}
variable "create_ddos_plan" {
  type        = bool
  default     = false
  description = "description"
}






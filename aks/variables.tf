variable "location" {
  type        = string
  description = "Resource location"
}

variable "rgname" {
  type        = string
  description = "Resource group name"
}

variable "aksname" {
  type        = string
  description = "AKS name"
}

variable "vm_size" {
  type        = string
  description = "VM size in the node pool"
}

variable "vnetname" {
  type        = string
  description = "VNET Name"
}

variable "subnetname" {
  type        = string
  description = "AKS subnet name"
}
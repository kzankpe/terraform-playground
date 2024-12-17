variable "location" {
  type        = string
  description = "Resource location"
  default = "North Europe"
}

variable "rgname" {
  type        = string
  description = "Resource group name"
  default = "kzergaks"
}

variable "nodergname" {
  type = string
  description = "Node Resource groupe name"
  default = "kzergaksnode"
}
variable "aksname" {
  type        = string
  description = "AKS name"
  default = "kzeaks"
}

variable "vm_size" {
  type        = string
  description = "VM size in the node pool"
  default = "Standard_D2_v2"
}

variable "vnetname" {
  type        = string
  description = "VNET Name"
  default = "kzevnetmgtne01"
}

variable "subnetname" {
  type        = string
  description = "AKS subnet name"
  default = "kzeakssubnet"
}
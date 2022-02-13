variable "network_rg_name" {
    type    = string
    default = "RG-SBX-DSOPS-EU-NETWORK-001"
}

variable "nsg_name" {
    type    = string
}

variable "subnet_name" {
    type    = string
}

variable "vnet_name" {
    type    = string
    default = "VNET-SBX-DSOPS-VI-EU-001"
}

variable "address_prefixes" {
    type    = list(string)
    default = ["10.0.2.64/26"]
}

variable "svc_delegation_name" {
    type    = string
}

variable "svc_delegation_actions" {
    type    = list(string)
    default = ["Microsoft.Network/networkinterfaces/*"]
}

variable "route_table_name" {
    type    = string
    default = "RT-SBX-DSOPS-EU-SPOKE-001"
}

variable "web_app_rg_name" {
    type    = string
}

variable "web_app_name" {
    type    = string
}

variable "delegation_with_actions" {
    type    = bool
    default = false
}

variable "tags" {
    type    = map(string)
}

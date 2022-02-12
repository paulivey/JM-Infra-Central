variable "sta_rg_name" {
    type    = string
}

variable "sta_name" {
    type    = string
}

variable "sta_tier" {
    type    = string
    default = "Standard"
}

variable "sta_kind" {
    type    = string
    default = "StorageV2"
}

variable "sta_access_tier" {
    type    = string
    default = "Hot"
}

variable "sta_replication_type" {
    type    = string
    default = "LRS"
}

variable "sta_blob_public_access" {
    type    = bool
    default = true
}

variable "sta_share_retention_period" {
    type    = number
    default = 7
}

variable "tags" {
    type    = map(string)
}
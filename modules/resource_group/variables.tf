variable "rg_name" {
    type    = string
}

variable "location" {
    type    = string
    default = "northeurope"
}

variable "tags" {
    type    = map(string)
}

variable "owner_object_id" {
    type    = string
}
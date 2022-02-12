variable "sta_name" {
    type    = string
}

variable "container_name" {
    type    = string
}

variable "container_access_type" {
    type    = string
    default = "blob"
}

variable "tags" {
    type    = map(string)
}
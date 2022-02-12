variable "sta_name" {
    type    = string
}

variable "share_name" {
    type    = string
}

variable "share_quota" {
    type    = number
    default = 6
}

variable "tags" {
    type    = map(string)
}
variable "app_name" {
    type    = string
}

variable "location" {
    type    = string
    default = "northeurope"
}

variable "app_rg_name" {
    type    = string
}

variable "asp_name" {
    type    = string
}

variable "asp_kind" {
    type    = string
    default = "Linux"
}

variable "asp_capacity" {
    type    = number
    default = 1
}

variable "asp_size" {
    type    = string
    default = "P1v2"
}

variable "asp_tier" {
    type    = string
    default = "PremiumV2"
}

variable "asp_reserved" {
    type    = bool
    default = true
}

variable "asp_max_ew_count" {
    type    = number
    default = 1
}

variable "app_cert_mode" {
    type    = string
    default = "Required"
}

variable "app_site_cfg_num_workers" {
    type    = number
    default = 1
}

variable "app_linux_fx_version" {
    type    = string
    default = "PYTHON|3.9"
}

variable "app_dotnet_version" {
    type    = string
    default = "v4.0"
}

variable "app_rmt_debug_version" {
    type    = string
    default = "VS2019"
}

variable "app_cmd_line" {
    type    = string
    default = "python index.py"
}

variable "app_ftps_state" {
    type    = string
    default = "AllAllowed"
}

variable "app_settings" {
    type    = map(string)
}

variable "route_all_enabled" {
    type    = bool
    default = true
}

variable "tags" {
    type    = map(string)
}

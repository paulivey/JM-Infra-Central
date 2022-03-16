variable "resource_group_name" {
    type    = string
}

variable "policy_definition_id" {
    type    = string
    default = "/subscriptions/8d49d625-7846-4382-a9ba-7470576eb940/providers/Microsoft.Authorization/policyDefinitions/e729b5d7-d592-4a98-957a-504d112ac12b"
}

variable "tag_country" {
    type    = string
    default = "SELECT VALUE"
    validation {
      condition = var.tag_country == "AUSTRALIA" || var.tag_country == "BRAZIL" || var.tag_country == "CANADA" || var.tag_country == "CHINA" || var.tag_country == "FRANCE" || var.tag_country == "GERMANY" || var.tag_country == "HONG KONG" || var.tag_country == "INDIA" || var.tag_country == "IRELAND" || var.tag_country == "JAPAN" || var.tag_country == "NETHERLANDS" || var.tag_country == "SINGAPORE" || var.tag_country == "SOUTH AFRICA" || var.tag_country == "SOUTH KOREA" || var.tag_country == "SWITZERLAND" || var.tag_country == "UAE" || var.tag_country == "UK" || var.tag_country == "USA" || var.tag_country == "SELECT VALUE"
      error_message = "Invalid country selection. Please select an allowed country."
    }
}

variable "tag_environment" {
    type    = string
    default = "ENVIRONMENT"
    validation {
      condition = var.tag_environment == "ACC-AMER" || var.tag_environment == "ACC-APAC" || var.tag_environment == "ACC-EMEA" || var.tag_environment == "ACC-HLTH-AMER" || var.tag_environment == "ACC-HLTH-APAC" || var.tag_environment == "ACC-HLTH-EMEA" || var.tag_environment == "AVD-AMER" || var.tag_environment == "AVD-APAC" || var.tag_environment == "AVD-EMEA" || var.tag_environment == "AZU-AD" || var.tag_environment == "AZU-MGMT" || var.tag_environment == "DEV-AMER" || var.tag_environment == "DEV-APAC" || var.tag_environment == "DEV-DVPS-BILLING" || var.tag_environment == "DEV-EMEA" || var.tag_environment == "DEV-HLTH-AMER" || var.tag_environment == "DEV-HLTH-APAC" || var.tag_environment == "DEV-HLTH-EMEA" || var.tag_environment == "DR-HLTH-AMER" || var.tag_environment == "DR-HLTH-APAC" || var.tag_environment == "DR-HLTH-EMEA" || var.tag_environment == "DR-AMER" || var.tag_environment == "DR-APAC" || var.tag_environment == "DR-EMEA" || var.tag_environment == "PRD-AMER" || var.tag_environment == "PRD-APAC" || var.tag_environment == "PRD-EMEA" || var.tag_environment == "PRD-HLTH-AMER" || var.tag_environment == "PRD-HLTH-APAC" || var.tag_environment == "PRD-HLTH-EMEA" || var.tag_environment == "PROD/DEV" || var.tag_environment == "SANDBOX" || var.tag_environment == "SBX-DSOPS-EMEA" || var.tag_environment == "SELECT VALUE"
      error_message = "Invalid environment selection. Please select an allowed environment."
    }
}

variable "tag_window" {
    type    = string
    default = "SELECT VALUE"
    validation {
      condition = var.tag_window == "SUNDAY" || var.tag_window == "MONDAY"  || var.tag_window == "TUESDAY" || var.tag_window == "WEDNESDAY" || var.tag_window == "THURSDAY" || var.tag_window == "FRIDAY" || var.tag_window == "SATURDAY" || var.tag_window == "NOT REQUIRED" || var.tag_window == "6 WEEKLY" || var.tag_window == "SELECT VALUE"
      error_message = "Invalid window selection. Please select an allowed window."
    }
}

variable "tag_sector" {
    type    = string
    default = "SELECT VALUE"
    validation {
        condition = var.tag_sector == "CLEAN AIR" || var.tag_sector == "BATTERIES & MATERIALS" || var.tag_sector == "DEVSECOPS" || var.tag_sector == "ENR"  || var.tag_sector == "GIS" || var.tag_sector == "GREEN HYDROGEN" || var.tag_sector == "GROUP" || var.tag_sector == "HEALTH" || var.tag_sector == "NEW MARKETS" || var.tag_sector == "R&D" || var.tag_sector == "SHARED" || var.tag_sector == "PROCUREMENT" || var.tag_sector == "NONE" || var.tag_sector == "SELECT VALUE"
        error_message = "Invalid sector selection. Please select an allowed sector."
    }
}

variable "tag_app_name" {
    type    = string
}

variable "tag_cost_center" {
    type    = string
}

variable "tag_app_owner" {
    type    = string
}

variable "tag_classification" {
    type    = string
    default = "SELECT VALUE"
    validation {
        condition = var.tag_classification == "CONFIDENTIAL" || var.tag_classification == "CRITICAL"  || var.tag_classification == "INTERNAL" || var.tag_classification == "PRIVATE" || var.tag_classification == "PUBLIC" || var.tag_classification == "SELECT VALUE"
        error_message = "Invalid classification selection. Please select an allowed classification."
    }
}

variable "tag_class" {
    type    = string
    default = "SELECT VALUE"
    validation {
        condition = var.tag_class == "BRONZE" || var.tag_class == "GOLD"  || var.tag_class == "PLATINUM" || var.tag_class == "SILVER" || var.tag_class == "SELECT VALUE"
        error_message = "Invalid class selection. Please select an allowed class."
    }
}

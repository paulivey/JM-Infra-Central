# Create Azure Policy assignment to resource group
resource "azurerm_resource_group_policy_assignment" "policy_assignment" {
  name = "From Terraform to RG"
  policy_definition_id = var.policy_definition_id
  resource_group_id = data.azurerm_resource_group.rg.id
  description = "Automatically created via Terraform :)"
  enforce = true
  parameters = <<PARAMS
    {
      "tagName1": {
        "value": "Country"
      },
      "tagValue1": {
        "value": "${var.tag_country}"
      },
      "tagName2": {
        "value": "Environment"
      },
      "tagValue2": {
        "value": "${var.tag_environment}"
      },
      "tagName3": {
        "value": "Maintenance Window"
      },
      "tagValue3": {
        "value": "${var.tag_window}"
      },
      "tagName4": {
        "value": "Business Sector"
      },
      "tagValue4": {
        "value": "${var.tag_sector}"
      },
      "tagName5": {
        "value": "Application Name"
      },
      "tagValue5": {
        "value": "${var.tag_app_name}"
      },
      "tagName6": {
        "value": "Cost Center"
      },
      "tagValue6": {
        "value": "${var.tag_cost_center}"
      },
      "tagName7": {
        "value": "Application Owner"
      },
      "tagValue7": {
        "value": "${var.tag_app_owner}"
      },
      "tagName8": {
        "value": "Data Classification"
      },
      "tagValue8": {
        "value": "${var.tag_classification}"
      },
      "tagName9": {
        "value": "Service Class"
      },
      "tagValue9": {
        "value": "${var.tag_class}"
      }
    }
PARAMS
  identity {
    type = "SystemAssigned"
  }
}
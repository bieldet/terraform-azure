resource "azurerm_resource_group" "rg" {
  name     = var.name_rg
  location = var.location
}

resource "azurerm_service_plan" "appserviceplan" {
  for_each = var.app_service_plans

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.name_rg
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name

  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_linux_web_app" "webapp" {
  for_each = var.web_apps

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.name_rg
  service_plan_id     = azurerm_service_plan.appserviceplan[each.value.service_plan_name].id
  https_only          = each.value.https_only
  site_config {
    minimum_tls_version = "1.2"
  }

  depends_on = [azurerm_service_plan.appserviceplan]
}
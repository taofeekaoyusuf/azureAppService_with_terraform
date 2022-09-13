resource "azurerm_linux_web_app" "dev" {
  name                = "${var.application_type}-${var.resource_type}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = azurerm_linux_web_app_plan.dev.id

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = 0
  }
  tags = "${var.tags}"
}

resource "azurerm_linux_web_app_plan" "dev" {
  name                = "${var.application_type}-${var.resource_type}"
  location            = "${var.location}"
  resource_group_name = azurerm_linux_web_app.dev.resource_group_name

  sku {
    tier = "Free"
    size = "F1"
  }
}

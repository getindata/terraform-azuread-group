resource "azuread_group" "this" {
  count = module.this.enabled ? 1 : 0

  display_name     = local.name_from_descriptor
  security_enabled = true
}

resource "azurerm_role_assignment" "this" {
  count = module.this.enabled ? length(var.role_assignments) : 0

  principal_id         = local.group_id
  scope                = var.role_assignments[count.index].scope
  role_definition_name = var.role_assignments[count.index].role_name
}

locals {
  name_from_descriptor = replace(lookup(module.this.descriptors, "ad-group", module.this.id), "/--+/", "-")

  group_id           = one(azuread_group.this[*].id)
  group_display_name = one(azuread_group.this[*].display_name)
}

variable "role_assignments" {
  type = list(object({
    scope : string
    role_name : string
  }))
  default     = []
  description = "List of role assignments (role name and a scope)"
}

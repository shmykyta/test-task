locals {
  dev_team_role_bindings = {
    for role in var.dev_team_roles :
    role => [format("group:%s", var.dev_group)]
  }
}

module "projects_dev_iam_binding" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 3.0"

  projects = var.projects
  mode     = "additive"

  bindings = local.dev_team_role_bindings
}

resource "google_project_iam_custom_role" "takeoff_developers_role" {
  for_each    = toset(var.projects)
  project     = each.value
  role_id     = var.dev_role_id
  title       = "Role for developers"
  description = "RO acess extended with port forwarding and logs reading"
  permissions = var.dev_addon_perms
}

resource "google_project_iam_member" "project_dev_iam_additive" {
  for_each = toset(var.projects)
  project  = each.value
  role     = format("projects/%s/roles/%s", each.value, var.dev_role_id)
  member   = format("group:%s", var.dev_group)
}

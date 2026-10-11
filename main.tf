data "gitlab_project_hooks" "project_hooks_lookup" {
  for_each = var.project_hooks_lookup

  project = each.value.project
}


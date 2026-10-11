output "project_hooks_lookup_id" {
  description = "Map of id values across all project_hooks_lookup, keyed the same as var.project_hooks_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_hooks.project_hooks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_hooks_lookup_hooks" {
  description = "Map of hooks values across all project_hooks_lookup, keyed the same as var.project_hooks_lookup except keys with no hooks are omitted"
  value       = { for k, v in data.gitlab_project_hooks.project_hooks_lookup : k => v.hooks if v.hooks != null && length(v.hooks) > 0 }
}
output "project_hooks_lookup_project" {
  description = "Map of project values across all project_hooks_lookup, keyed the same as var.project_hooks_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_hooks.project_hooks_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}


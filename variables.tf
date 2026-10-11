variable "project_hooks_lookup" {
  description = <<EOT
Map of project_hooks_lookup, attributes below
Required:
    - project
EOT

  type = map(object({
    project = string
  }))
}


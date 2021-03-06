# ------------------------------------------------------------------------------
# OUTPUT CALCULATED VARIABLES (prefer full objects)
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# OUTPUT ALL RESOURCES AS FULL OBJECTS
# ------------------------------------------------------------------------------

output "repository" {
  description = "All outputs of the repository."
  value       = try(aws_ecr_repository.repository[0], null)
}

output "repository_policy" {
  description = "The attached repository policies."
  value       = try(aws_ecr_repository_policy.repository_policy[0], null)
}

output "lifecycle_policy" {
  description = "The attached repository lifecycle policies."
  value       = try(aws_ecr_lifecycle_policy.lifecycle_policy[0], null)
}

# ------------------------------------------------------------------------------
# OUTPUT MODULE CONFIGURATION
# ------------------------------------------------------------------------------

output "module_enabled" {
  description = "Whether the module is enabled"
  value       = var.module_enabled
}

output "module_tags" {
  description = "A map of default tags to apply to all resources created which support tags."
  value       = var.module_tags
}

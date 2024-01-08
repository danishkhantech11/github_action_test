variable "secondary_region" {
  description = "The secondary region available for disaster recovery"
  default = "us-east-2"
}

variable "region" {
  description = "The secondary region available for disaster recovery"
  default = "us-east-2"
}





output "var_secondary_region" {
  value = var.secondary_region
}

output "var_region" {
  value = var.region
}

output "var_desired_task_count" {
  value = var.desired_task_count
}

output "var_min_task_count" {
  value = var.min_task_count
}

output "var_is_secondary_region_active" {
  value = var.is_secondary_region_active == "true"
}


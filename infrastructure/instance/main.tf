variable "aspnetcore_image" {
  description = "Docker image pushed to ECR"
}

variable "newrelic_license_key" {
  default = ""
}

variable "splunk_hec_token" {
  description = "Optional Splunk HTTP Event Collector token enables Splunk log driver"
  default     = ""
}

variable "service_name" {
  description = "The first part of the name of the service (usually api or www)"
  default     = "api"
}

variable "infra_prefix" {
  description = "The prefix used to create resources in AWS"
  type = string
}

variable "secondary_region" {
  description = "The secondary region available for disaster recovery"
  default = "us-east-2"
}

variable "region" {
  description = "The secondary region available for disaster recovery"
  default = "us-east-2"
}

variable "aspnetcore_environment" {
    description = "Dotnet environment var"
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

output "var_max_task_count" {
  value = var.max_task_count
}


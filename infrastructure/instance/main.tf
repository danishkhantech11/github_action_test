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


output "ecs-infra" {
  value = {
  desired_task_count  = var.secondary_region == var.region ? 0 : var.desired_task_count
  min_task_count      = var.secondary_region == var.region ? 0 : var.min_task_count
  max_task_count      = var.secondary_region == var.region ? 0 : var.max_task_count
  }
}
output "var.secondary_region" {
  value = var.secondary_region
}

output "var.region" {
  value = var.region
}

output "desired_task_count" {
  value = desired_task_count
}

output "var.min_task_count" {
  value = var.min_task_count
}

output "var.max_task_count" {
  value = var.max_task_count
}


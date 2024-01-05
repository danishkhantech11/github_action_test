output "ecs-infra" {
  value = {
  desired_task_count  = var.secondary_region == var.region ? 0 : var.desired_task_count
  min_task_count      = var.secondary_region == var.region ? 0 : var.min_task_count
  max_task_count      = var.secondary_region == var.region ? 0 : var.max_task_count
  }

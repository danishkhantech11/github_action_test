variable "is_secondary_region_active" {
  description = "Defining the status of the secondary region (us-east-2)"
  type        = string
  default     = "tf file"
}

variable "desired_task_count" {
  default     = 1
  description = "Initial desired task count for ECS Service"
  type        = number
}

variable "min_task_count" {
  default     = 1
  description = "Initial min task count for ECS Service"
  type        = number
}

variable "max_task_count" {
  default     = 6
  description = "Initial max task count for ECS Service"
  type        = number
}

variable "task_cpu" {
  default     = 512
  description = "Task CPU setting"
  type        = number
}

variable "task_memory" {
  default     = 1024
  description = "Task memory setting"
  type        = number
}

variable "v1" {
  default     = 1
  description = "Initial desired task count for ECS Service"
  type        = number
}

variable "v2" {
  default     = 1
  description = "Initial min task count for ECS Service"
  type        = number
}

variable "v3" {
  default     = 6
  description = "Initial max task count for ECS Service"
  type        = number
}

variable "v4" {
  default     = 512
  description = "Task CPU setting"
  type        = number
}

variable "v5" {
  default     = 1024
  description = "Task memory setting"
  type        = number
}

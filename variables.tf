variable "min_capacity" {
  type        = number
  description = "Minimum number of running instances of a Service"
  default     = 1
}

variable "max_capacity" {
  type        = number
  description = "Maximum number of running instances of a Service"
  default     = 2
}

variable "cluster_name" {
  type        = string
  description = "The name of the ECS cluster where service is to be autoscaled"
}

variable "service_name" {
  type        = string
  description = "The name of the ECS Service to autoscale"
}

variable "scale_up_adjustment" {
  type        = number
  description = "Scaling adjustment to make during scale up event"
  default     = 1
}

variable "scale_up_cooldown" {
  type        = number
  description = "Period (in seconds) to wait between scale up events"
  default     = 60
}

variable "scale_down_adjustment" {
  type        = number
  description = "Scaling adjustment to make during scale down event"
  default     = -1
}

variable "scale_down_cooldown" {
  type        = number
  description = "Period (in seconds) to wait between scale down events"
  default     = 300
}

variable "scheduled_off_min_capacity" {

  type        = number
  description = "Minimum number of running instances of a Service"
  default     = 1
}

variable "scheduled_off_max_capacity" {

  type        = number
  description = "Maximum number of running instances of a Service"
  default     = 2
}

variable "autoscaling_schedule_enabled" {
  type        = bool
  default     = null
  description = "Set to false to prevent the module from creating autoscaling schedule resources"
}

variable "autoscaling_schedule_on" {
  type        = string
  default     = null
  description = "Auto scaling schedule expression for 'on' state"
}

variable "autoscaling_schedule_off" {
  type        = string
  default     = null
  description = "Auto scaling schedule expression for 'off' state"
}




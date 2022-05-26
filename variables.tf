# Input variable definitions

variable "creation_token" {
  description = "Name your file system"
  type        = string
}

variable "throughput" {
  description = "Set how your file system's throughput limits are determined"
  type        = string
  default     = "bursting"
}

variable "performance" {
  description = "Set your file system's performance mode based on IOPS required"
  type        = string
  default     = "generalPurpose"
}

variable "encrypted" {
  type    = bool
  default = true
}

variable "subnets" {
  type        = list(string)
  sensitive   = true
  description = "Subnet IDs"
}

variable "security_groups" {
  type        = list(string)
  sensitive   = true
  description = "Security Group IDs"
}

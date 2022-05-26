# Output variable definitions

output "creation_token" {
  description = "Name your file system"
  value       = try(aws_efs_file_system.k8s.creation_token, "")
}

output "throughput_mode" {
  description = "Set how your file system's throughput limits are determined"
  value       = try(aws_efs_file_system.k8s.throughput_mode, "")
}

output "performance_mode" {
  description = "Set your file system's performance mode based on IOPS required"
  value       = try(aws_efs_file_system.k8s.performance_mode, "")
}

output "encrypted" {
  description = "Enable encryption"
  value       = try(aws_efs_file_system.k8s.encrypted, "")
}

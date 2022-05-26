# Output variable definitions

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_efs_file_system.k8s.id
}

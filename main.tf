resource "aws_efs_file_system" "k8s" {
  creation_token   = var.creation_token
  throughput_mode  = var.throughput_mode
  performance_mode = var.performance_mode
  encrypted        = var.encrypted

  tags = {
    Name = var.creation_token
  }
}

resource "aws_efs_mount_target" "k8s" {
  count           = length(var.subnets) > 0 ? length(var.subnets) : 0
  file_system_id  = aws_efs_file_system.k8s.id
  subnet_id       = var.subnets[count.index]
  security_groups = var.security_groups
}

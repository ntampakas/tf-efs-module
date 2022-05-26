resource "aws_efs_file_system" "k8s" {
  creation_token   = var.token
  throughput_mode  = var.throughput
  performance_mode = var.performance
  encrypted        = var.encrypted

  tags = {
    Name = var.token
  }
}

resource "aws_efs_mount_target" "priv-1a" {
  file_system_id  = aws_efs_file_system.provers.id
  subnet_id       = "subnet-0422c110d33557d33"
  security_groups = ["sg-0382ff14a1353aae4"]
}

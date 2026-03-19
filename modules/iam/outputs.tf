output "cluster_role_arn" {
  value = aws_iam_role.eks_cluster.arn
}

output "node_role_arn" {
  value = aws_iam_role.eks_node_group.arn
}

output "admin_user_arn" {
  value = data.aws_iam_user.existing_admin.arn
}

output "admin_user_name" {
  value = data.aws_iam_user.existing_admin.user_name
}

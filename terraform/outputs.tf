output "eks_cluster_name" {
  description = "El nombre del clúster EKS"
  value       = aws_eks_cluster.eks_cluster.name
}

output "eks_cluster_endpoint" {
  description = "El endpoint del clúster EKS"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_arn" {
  description = "El ARN del clúster EKS"
  value       = aws_eks_cluster.eks_cluster.arn
}

output "eks_node_group_name" {
  description = "El nombre del grupo de nodos EKS"
  value       = aws_eks_node_group.node_group.node_group_name
}

output "eks_node_group_status" {
  description = "El estado del grupo de nodos EKS"
  value       = aws_eks_node_group.node_group.status
}

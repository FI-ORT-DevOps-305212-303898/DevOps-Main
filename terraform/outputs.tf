output "eks_cluster_name" {
  description = "Nombre del cluster EKS"
  value       = aws_eks_cluster.eks_cluster.name
}

output "eks_cluster_endpoint" {
  description = "Endpoint del cluster EKS"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_arn" {
  description = "ARN del cluster EKS"
  value       = aws_eks_cluster.eks_cluster.arn
}

output "eks_node_group_name" {
  description = "Nombre del grupo de nodos EKS"
  value       = aws_eks_node_group.node_group.node_group_name
}

output "eks_node_group_status" {
  description = "Estado del grupo de nodos EKS"
  value       = aws_eks_node_group.node_group.status
}



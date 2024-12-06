variable "eks_cluster_name" {
  description = "Nombre del clúster EKS"
  type        = string
}

variable "key_name" {
  description = "Nombre de la clave EC2 para SSH"
  type        = string
}

variable "create_iam_role" {
  description = "Indica si el rol IAM para el grupo de nodos EKS debe ser creado."
  type        = bool
  default     = true
}

variable "iam_role_name" {
  description = "Nombre del rol IAM para el grupo de nodos EKS"
  type        = string
  default     = "devops-nodes-iam-role"
}

variable "iam_role_use_name_prefix" {
  description = "Si se debe usar un prefijo para el nombre del rol IAM."
  type        = bool
  default     = false
}

variable "iam_role_arn" {
  description = "ARN del rol IAM existente para el clúster EKS"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR para la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_public" {
  description = "Subred pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_private" {
  description = "Subred privada"
  type        = string
  default     = "10.0.101.0/24"
}

variable "region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"
}

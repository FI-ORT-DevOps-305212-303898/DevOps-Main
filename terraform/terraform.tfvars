eks_cluster_name = "devops-cluster"
key_name         = "my-ec2-key"

create_iam_role     = true
iam_role_name       = "devops-nodes-iam-role"
iam_role_use_name_prefix = false
iam_role_arn        = "arn:aws:iam::285780467472:role/LabRole"  # El ARN de un rol preexistente

vpc_cidr        = "10.0.0.0/16"
subnet_public   = "10.0.1.0/24"
subnet_private  = "10.0.101.0/24"
region          = "us-east-1"

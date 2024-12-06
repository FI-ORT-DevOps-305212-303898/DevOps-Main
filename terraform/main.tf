terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "terraformbucketdevops"
    key            = "terraform/state"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  name = "devops-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]  
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]  
  private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]  

  enable_nat_gateway = true
  tags = {
    Name = "devops-vpc"
  }
}


resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_cluster_name
  role_arn = var.iam_role_arn

  vpc_config {
    subnet_ids         = module.vpc.private_subnets
    security_group_ids = [module.vpc.default_security_group_id]

  }

  tags = {
    Environment = "devops"
  }
}

resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "devops-node-group"
  node_role_arn   = var.iam_role_arn

  subnet_ids = module.vpc.private_subnets

  scaling_config {
    desired_size = 4
    min_size     = 1
    max_size     = 5
  }

  instance_types = ["t2.micro"]
  capacity_type  = "ON_DEMAND"

  tags = {
    Environment = "devops"
  }
}

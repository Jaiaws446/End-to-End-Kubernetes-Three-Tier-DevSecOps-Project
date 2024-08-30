terraform {
  backend "s3" {
    bucket         = "jaiaws446-state-dev"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-Three-Tier-DevSecOps-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "jaiaws446-locking-dev"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = "5.31.0"
      source  = "hashicorp/aws"
    }
  }
}
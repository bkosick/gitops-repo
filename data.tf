#data "aws_eks_cluster" "cluster" {
#  name = module.eks.cluster_id
#}

#data "aws_eks_cluster_auth" "cluster" {
#  name = module.eks.cluster_id
#}

data "aws_region" "current-region" {}

data "aws_caller_identity" "current" {}
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

#data "aws_subnet_ids" "public_subnet_ids" {
#  vpc_id = module.vpc.
#}

// Then get the region using
#data.aws_region.current-region.name 

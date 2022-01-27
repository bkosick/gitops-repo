module "elasticache" {
  source  = "git::https://github.com/terraform-community-modules/tf_aws_elasticache_redis.git"

  env            = "dev"
  name           = "dumbbberrerr"
  redis_clusters = "2"
  redis_failover = "true"
  subnets        = module.vpc.elasticache_subnets
  vpc_id         = module.vpc.vpc_id

  redis_parameters = [{
    name  = "min-slaves-max-lag"
    value = "5"
  },{
    name  = "min-slaves-to-write"
    value = "1"
  },{
    name  = "databases"
    value = "32"
  }]
}

output "ec_endpoint" {
  value = module.elasticache.endpoint
}

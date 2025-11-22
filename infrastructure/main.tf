module "network" {
  source     = "../modules/network"
  cidr_block = var.cidr_block
  env        = var.env
}

module "compute" {
  source        = "../modules/compute"
  instance_type = var.instance_type
  env           = var.env
}
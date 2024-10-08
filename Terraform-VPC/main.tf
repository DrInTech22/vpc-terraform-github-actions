module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  availability_zones = var.availability_zones
  subnet_names = var.subnet_names
}

module "sg" {
    source = "./modules/sg"
    vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
  availability_zones = var.availability_zones
  ec2_names = var.ec2_names
}

module "alb" {
  source = "./modules/alb"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
  instances = module.ec2.instances
}
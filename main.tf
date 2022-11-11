# module "vpc" {
#   source = "git::https://github.com/b49-codesud/tf-module-vpc.git"
# }

module "alb-public" {
  source           = "./vendor/modules/alb"
  ALB_NAME         = "roboshop-public-lb"
  INTERNAL         = false 
  ENV              = var.ENV
}


module "alb-private" {
  source           = "./vendor/modules/alb"
  ALB_NAME         = "roboshop-private-lb"
  INTERNAL         = true 
  ENV              = var.ENV
}

# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech

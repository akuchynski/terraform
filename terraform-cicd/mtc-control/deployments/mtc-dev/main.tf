//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/terraform-mtc-course/compute/aws"
  version = "1.0.1"

  aws_region          = "eu-central-1"
  public_key_material = "use ssh-keygen to generate public_key"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/terraform-mtc-course/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "eu-central-1"
}
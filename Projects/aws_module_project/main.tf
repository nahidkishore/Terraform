#dev

module "dev-app" {
  source        = "./my_app_infra_module"
  my_env        = "dev"
  instance_type = "t2.micro"
  ami           = "ami-0889a44b331db0194"
}

#production

module "prd-app" {
  source        = "./my_app_infra_module"
  my_env        = "prd"
  instance_type = "t2.medium"
  ami           = "ami-0889a44b331db0194"
}

#staging

module "stg-app" {
  source        = "./my_app_infra_module"
  my_env        = "stg"
  instance_type = "t2.small"
  ami           = "ami-0889a44b331db0194"
}
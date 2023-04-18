provider "aws" {
  region = var.my_region
}

module "webserver" {
  source = ".//startup_company1"
}

module "mailserver" {
  source = ".//startup_company2"
}
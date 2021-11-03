terraform {
  required_version = ">= 0.12.29"
}

module "web_ec2" {
  source                = "../../module/web_ec2"
}

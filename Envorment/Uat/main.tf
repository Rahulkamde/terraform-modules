provider "aws" {
  profile = "rahul"
  region  = "us-west-1"
}

module "Instance" {
  source        = "../../modules/instance"
  instance_type = "t2.micro"
  instance_tags = {
    Owners     = "Uat.io"
    Purpose    = "testing terraform"
    start_date = "06/01/2023"
  }
  instance_az          = "us-west-1c"
  instance_termination = false
  instance_monitering  = false
  sg_name              = "tf_sgroup-module"
  sg_description       = "inbound and outbound"
  sg_tags = {
    Owners   = "Uat.io"
    Purpose  = "testing terraform"
    end_date = "31/01/2023"
  }
}
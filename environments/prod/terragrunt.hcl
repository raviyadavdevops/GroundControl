# terragrunt.hcl
include {
  path = find_in_parent_folders()
}

# add any additional config like
# inputs = {
#   environment = "prod"

#   vpc_cidr            = "10.1.0.0/16"
#   public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24"]
#   private_subnet_cidrs = ["10.1.3.0/24", "10.1.4.0/24"]

#   ami_id             = "ami-98765432"
#   instance_type      = "t3.medium"
#   key_name           = "prod-keypair"

#   db_name            = "prod_db"
#   db_username        = "admin"
#   db_password        = "prodsecurepassword"
# }
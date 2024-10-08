# Define the Terraform source, which points to your module code
terraform {
  source = "${get_parent_terragrunt_dir()}/modules//${path_relative_to_include()}"
}

# Configure remote backend for Terraform state management
remote_state {
  backend = "s3"
  config = {
    bucket         = "your-terraform-state-bucket"    # S3 bucket for storing state
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"                       # Replace with your region
    encrypt        = true
    dynamodb_table = "terraform-locks"                 # DynamoDB table for state locks
  }
}

# Define provider version and settings (e.g., for AWS)
# generate "provider.tf" {
#   path      = "provider.tf"
#   if_exists = "overwrite"

#   contents = <<EOF
# provider "aws" {
#   region = "us-east-1"  # Replace with your desired region
# }
# EOF
# }

# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "prod"
  aws_account_id = "410160839310"
  aws_profile    = "prod"
}

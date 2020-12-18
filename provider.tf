provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials.txt"
  profile                 = "Terraform"
  version                 = "3.22"
}

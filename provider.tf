provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/etcheby/.aws/credentials.txt"
  profile                 = "Terraform"
  version                 = "~> 3.15"
}

#########################################
############# Variables #################
#########################################

# MDS Existing VPC & Subnet

variable "mds_vpc" {
  description = "Existing VPC ID"
  default     = "vpc-0191eb7d40d4bee7e"
}

variable "mds_subnet" {
  description = "Existing Subnet ID"
  default     = "subnet-05d08b9d1dac08ee7" 
}

variable "admin_subnet" {
  description = "Allow web, SSH, and graphical clients only from this network to communicate with the Management Server"
  default     = "0.0.0.0/0" 
}

variable "gateway_addresses" {
  description = "Allow gateways only from this network to communicate with the Management Server"
  default     = "0.0.0.0/0"
}

#######################################################
############# Check Point Settings ####################
#######################################################
# Hashed password for the Check Point servers - you can generate this with the command 'openssl passwd -1 <PASSWORD>'
# (Optional) You can instead SSH into the server and run (from clish): 'set user admin password', fowlloed by 'save config'

variable "password_hash" {
  description = "Hashed password for the Check Point servers - Optional but recommended"
  default     = "$1$5b8270b8$XTwkTQUC.Ddce5rSALyBj/"
}

variable "sts_roles" {
  description = "IAM Roles Assumed by CP MDS to other AWS accounts"
  default     = ""
}

variable "sic_key" {
  description = "OTP to establish connectivity between Mgmt & Security Gateway"
  default     = "vpn123vpn123"
}

variable "cpversion" {
  description = "Check Point version"
  default     = "R80.40"
}

variable "key_name" {
  description = "Key Pair to SSH into Check Point instances"
  default     = "AWSLab"
}

variable "mds_iamrole" {
  description = "Predefined IAM Role for CP MDS Instance"
  default     = "Checkpoint_EA"
}

variable "kmskey_identifier" {
  description = "KMS or CMK key Identifier - Use key ID, alias or ARN. Key alias should be prefixed with 'alias/' "
  default     = "alias/aws/ebs"
}

variable "mds_instance_type" {
  default = "m5.4xlarge"
}


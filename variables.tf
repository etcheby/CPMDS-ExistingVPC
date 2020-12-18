#########################################
############# Variables #################
#########################################

# MDS Existing VPC & Subnet

variable "mds_vpc" {
  description = "Existing VPC ID"
  default     = ""
}

variable "mds_subnet" {
  description = "Existing Subnet ID"
  default     = "" 
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
  default     = "TGW"
}

variable "mds_instance_type" {
  default = "m5.4xlarge"
}


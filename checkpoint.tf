# Deploy Check Point MDS into existing VPC cloudformation template - sk143213

resource "aws_cloudformation_stack" "CP_MDS" {
  name = "Checkpoint-MDS"

  parameters = {
    VPC                   = var.mds_vpc
    Subnet                = var.mds_subnet
    Name                  = "CP-MDS"
    InstanceType          = var.mds_instance_type
    Version               = "${var.cpversion}-BYOL"
    KeyName               = var.key_name
    PasswordHash          = var.password_hash
    InstallationType      = "Primary Multi-Domain Server"
    Shell                 = "/bin/bash"
    Permissions           = "Create with read-write permissions"
    EnableInstanceConnect = "false"
    VolumeEncryption      = ""
    Hostname              = ""
    STSRoles              = ""
    SICKey                = "${var.sic_key}"


  }

  template_url       = "https://cgi-cfts.s3.amazonaws.com/deprecated/management/mds.json"
  capabilities       = ["CAPABILITY_IAM"]
  disable_rollback   = true
  timeout_in_minutes = 25
}


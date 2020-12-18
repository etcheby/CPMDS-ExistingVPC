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
    EnableInstanceConnect = "true"
    PredefinedRole        = var.mds_iamrole
    STSRoles              = var.sts_roles
    AllowUploadDownload   = "true"
    AdminSubnet           = var.admin_subnet
    GatewaysAddresses     = var.gateway_addresses
    VolumeSize            = "100"
    VolumeEncryption      = var.kmskey_identifier
    Hostname              = ""
    SICKey                = var.sic_key
    NTPPrimary            = "169.254.169.123"
    NTPSecondary          = "0.pool.ntp.org"
    BootstrapScript       = ""


  }

  template_url       = "https://cgi-cfts.s3.amazonaws.com/deprecated/management/mds.json"
  capabilities       = ["CAPABILITY_IAM"]
  disable_rollback   = true
  timeout_in_minutes = 25
}

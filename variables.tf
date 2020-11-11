variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "compartment_ocid" {}
variable "public_key_oci" {}
//variable "private_key_oci" {}

variable sddc_display_name {
    description =   "(Optional) (Updatable) A descriptive name for the SDDC. SDDC name requirements are 1-16 character length limit, Must start with a letter, Must be English letters, numbers, - only, No repeating hyphens, Must be unique within the region. Avoid entering confidential information"
    default =   "test_sddc_vmware"
}

/* variable sddc_esxi_hosts_count {
    description =   "(Required) The number of ESXi hosts to create in the SDDC. You can add more hosts later - Minimum 3 required, maximum 64"
    default =   "3"
} */



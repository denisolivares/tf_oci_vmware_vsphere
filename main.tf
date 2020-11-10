provider "oci" {
  version          = ">= 3.27.0"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

resource "oci_ocvp_sddc" "test_sddc" {
    #Required
    compartment_id = var.compartment_id
    compute_availability_domain = var.sddc_compute_availability_domain
    esxi_hosts_count = var.sddc_esxi_hosts_count
    nsx_edge_uplink1vlan_id = oci_core_vlan.test_nsx_edge_uplink1vlan.id
    nsx_edge_uplink2vlan_id = oci_core_vlan.test_nsx_edge_uplink2vlan.id
    nsx_edge_vtep_vlan_id = oci_core_vlan.test_nsx_edge_vtep_vlan.id
    nsx_vtep_vlan_id = oci_core_vlan.test_nsx_vtep_vlan.id
    provisioning_subnet_id = oci_core_subnet.test_subnet.id
    ssh_authorized_keys = var.public_key_oci
    vmotion_vlan_id = oci_core_vlan.test_vmotion_vlan.id
    vmware_software_version = var.sddc_vmware_software_version
    vsan_vlan_id = oci_core_vlan.test_vsan_vlan.id
    vsphere_vlan_id = oci_core_vlan.test_vsphere_vlan.id

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}
    display_name = var.sddc_display_name
    freeform_tags = {"Department"= "Finance"}
    hcx_vlan_id = oci_core_vlan.test_vlan.id
    instance_display_name_prefix = var.sddc_instance_display_name_prefix
    is_hcx_enabled = var.sddc_is_hcx_enabled
    workload_network_cidr = var.sddc_workload_network_cidr
}
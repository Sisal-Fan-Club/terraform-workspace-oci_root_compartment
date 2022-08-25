locals {
  root_compartment = oci_identity_compartment.root_compartment
}

resource "oci_identity_compartment" "root_compartment" {
  provider = oci.home
  
  compartment_id = var.oci_tenancy_id
  
  name = "sisal-fan-club"
  description = "Sisal Fan Club (error)"
  
  enable_delete = true
  
  freeform_tags = {
    factory = "digital"
    app_code = "nsfc"
    managed-by = "Terraform Cloud"
    terraform-cloud-workspace = "Sisal-Fan-Club/root_compartment"
  }
}

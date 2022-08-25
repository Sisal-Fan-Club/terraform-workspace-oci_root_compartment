locals {
  root_compartment = oci_identity_compartment.root_compartment
}

resource "oci_identity_compartment" "root_compartment" {
  compartment_id = var.oci_tenancy_id
  
  name = "sisal-fan-club"
  description = "Sisal Fan Club"
  
  enable_delete = true
  
  freeform_tags = {
    factory = "digital"
    app_code = "nsfc"
  }
}

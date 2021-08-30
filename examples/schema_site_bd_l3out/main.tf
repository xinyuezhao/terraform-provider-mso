terraform {
  required_providers {
    mso = {
      source = "CiscoDevNet/mso"
    }
  }
}

provider "mso" {
  username = "" # <MSO username>
  password = "" # <MSO pwd>
  url      = "" # <MSO URL>
  insecure = true
}

resource "mso_schema_site_bd_l3out" "foo_schema_site_bd_l3out" {
  schema_id     = "5d5dbf3f2e0000580553ccce"
  template_name = "Template1"
  site_id       = "5c7c95b25100008f01c1ee3c"
  bd_name       = "WebServer-Finance"
  l3out_name    = "foo_l3out"
}
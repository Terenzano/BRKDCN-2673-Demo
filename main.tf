terraform {
  cloud {
    organization = "CiscoLive"

    workspaces {
      name = "BRKDCN-2673-Demo"
    }
  }
}

provider "aci" {
  username = "admin"
  password = "!v3G@!4@Y"
  url      = "https://sandboxapicdc.cisco.com"
}

module "aci" {
  source  = "netascode/nac-aci/aci"
  version = "0.9.0"

  yaml_directories          = ["data"]
  manage_tenants            = true
  write_default_values_file = "defaults.yaml"
}

resource "google_folder_organization_policy" "firewall_policy_non_prod" {
  folder     = "folders/${var.non_production_folder_id}"
  constraint = "compute.allowedFirewallRules"

  list_policy {
    inherit_from_parent = false
    allow {
      condition {
        expression  = "destination.ip_protocol == 'tcp' && (destination.port == 80 || destination.port == 443) && source.matchIpRange('0.0.0.0/0')"
        title       = "allow-http-https-external"
        description = "Allow inbound HTTP/HTTPS traffic from the internet."
      }
    }
    allow {
      condition {
        expression  = "source.matchIpRange('10.0.0.0/8') || source.matchIpRange('172.16.0.0/12') || source.matchIpRange('192.168.0.0/16')"
        title       = "allow-all-internal-traffic"
        description = "Allow all traffic from internal RFC1918 IP ranges."
      }
    }
  }
}

resource "google_folder_organization_policy" "firewall_policy_prod" {
  folder     = "folders/${var.production_folder_id}"
  constraint = "compute.allowedFirewallRules"

  list_policy {
    inherit_from_parent = false
    allow {
      condition {
        expression  = "destination.ip_protocol == 'tcp' && (destination.port == 80 || destination.port == 443) && source.matchIpRange('0.0.0.0/0')"
        title       = "allow-http-https-external"
        description = "Allow inbound HTTP/HTTPS traffic from the internet."
      }
    }
    allow {
      condition {
        expression  = "source.matchIpRange('10.0.0.0/8') || source.matchIpRange('172.16.0.0/12') || source.matchIpRange('192.168.0.0/16')"
        title       = "allow-all-internal-traffic"
        description = "Allow all traffic from internal RFC1918 IP ranges."
      }
    }
  }
}

resource "google_folder_organization_policy" "firewall_policy_dev" {
  folder     = "folders/${var.development_folder_id}"
  constraint = "compute.allowedFirewallRules"

  list_policy {
    inherit_from_parent = false
    allow {
      condition {
        expression  = "destination.ip_protocol == 'tcp' && (destination.port == 80 || destination.port == 443) && source.matchIpRange('0.0.0.0/0')"
        title       = "allow-http-https-external"
        description = "Allow inbound HTTP/HTTPS traffic from the internet."
      }
    }
    allow {
      condition {
        expression  = "source.matchIpRange('10.0.0.0/8') || source.matchIpRange('172.16.0.0/12') || source.matchIpRange('192.168.0.0/16')"
        title       = "allow-all-internal-traffic"
        description = "Allow all traffic from internal RFC1918 IP ranges."
      }
    }
  }
}

resource "google_folder_organization_policy" "firewall_policy_common" {
  folder     = "folders/${var.common_folder_id}"
  constraint = "compute.allowedFirewallRules"

  list_policy {
    inherit_from_parent = false
    allow {
      condition {
        expression  = "destination.ip_protocol == 'tcp' && (destination.port == 80 || destination.port == 443) && source.matchIpRange('0.0.0.0/0')"
        title       = "allow-http-https-external"
        description = "Allow inbound HTTP/HTTPS traffic from the internet."
      }
    }
    allow {
      condition {
        expression  = "source.matchIpRange('10.0.0.0/8') || source.matchIpRange('172.16.0.0/12') || source.matchIpRange('192.168.0.0/16')"
        title       = "allow-all-internal-traffic"
        description = "Allow all traffic from internal RFC1918 IP ranges."
      }
    }
  }
}
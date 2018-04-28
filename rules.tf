resource "digitalocean_firewall" "outbound-http" {
  name        = "${var.prefix}-http-outbound-fw"
  droplet_ids = ["${var.droplet_ids}"]
  tags        = ["${var.tags}"]

  # http/https connection
  outbound_rule = [
    {
      protocol                       = "tcp"
      port_range                     = "80"
      destination_addresses          = ["${var.allowed_outbound_http_addresses}"]
      destination_tags               = ["${var.allowed_outbound_http_tags}"]
      destination_droplet_ids        = ["${var.allowed_outbound_http_droplet_ids}"]
      destination_load_balancer_uids = ["${var.allowed_outbound_http_load_balancer_uids}"]
    },
    {
      protocol                       = "tcp"
      port_range                     = "443"
      destination_addresses          = ["${var.allowed_outbound_https_addresses}"]
      destination_tags               = ["${var.allowed_outbound_https_tags}"]
      destination_droplet_ids        = ["${var.allowed_outbound_https_droplet_ids}"]
      destination_load_balancer_uids = ["${var.allowed_outbound_https_load_balancer_uids}"]
    },
  ]
}

resource "digitalocean_firewall" "outbound-dns" {
  name        = "${var.prefix}-dns-outbound-fw"
  droplet_ids = ["${var.droplet_ids}"]
  tags        = ["${var.tags}"]

  # DNS lookups
  outbound_rule = [
    {
      protocol                       = "udp"
      port_range                     = "53"
      destination_addresses          = ["${var.allowed_outbound_dns_addresses}"]
      destination_tags               = ["${var.allowed_outbound_dns_tags}"]
      destination_droplet_ids        = ["${var.allowed_outbound_dns_droplet_ids}"]
      destination_load_balancer_uids = ["${var.allowed_outbound_dns_load_balancer_uids}"]
    },
    {
      protocol                       = "tcp"
      port_range                     = "53"
      destination_addresses          = ["${var.allowed_outbound_dns_addresses}"]
      destination_tags               = ["${var.allowed_outbound_dns_tags}"]
      destination_droplet_ids        = ["${var.allowed_outbound_dns_droplet_ids}"]
      destination_load_balancer_uids = ["${var.allowed_outbound_dns_load_balancer_uids}"]
    },
  ]
}

resource "digitalocean_firewall" "outbound-ntp" {
  name        = "${var.prefix}-ntp-outbound-fw"
  droplet_ids = ["${var.droplet_ids}"]
  tags        = ["${var.tags}"]

  # ntp access
  outbound_rule = [
    {
      protocol                = "udp"
      port_range              = "123"
      destination_addresses   = ["${var.allowed_outbound_ntp_addresses}"]
      destination_tags        = ["${var.allowed_outbound_ntp_tags}"]
      destination_droplet_ids = ["${var.allowed_outbound_ntp_droplet_ids}"]
    },
  ]
}

resource "digitalocean_firewall" "outbound-ssh" {
  name        = "${var.prefix}-ssh-outbound-fw"
  droplet_ids = ["${var.droplet_ids}"]
  tags        = ["${var.tags}"]

  # git/ssh connection
  outbound_rule = [
    {
      protocol                = "tcp"
      port_range              = "22"
      destination_addresses   = ["${var.allowed_outbound_ssh_addresses}"]
      destination_tags        = ["${var.allowed_outbound_ssh_tags}"]
      destination_droplet_ids = ["${var.allowed_outbound_ssh_droplet_ids}"]
    },
  ]
}

resource "digitalocean_firewall" "inbound-ssh" {
  name        = "${var.prefix}-ssh-inbound-fw"
  droplet_ids = ["${var.droplet_ids}"]
  tags        = ["${var.tags}"]

  inbound_rule = [
    {
      protocol           = "tcp"
      port_range         = "22"
      source_tags        = ["${var.allowed_inbound_ssh_tags}"]
      source_droplet_ids = ["${var.allowed_inbound_ssh_droplet_ids}"]
      source_addresses   = ["${var.allowed_inbound_ssh_adresses}"]
    },
  ]
}

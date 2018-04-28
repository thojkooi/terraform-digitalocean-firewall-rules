variable "prefix" {
  description = "Prefix applied to firewall rule names"
  type        = "string"
}

variable "droplet_ids" {
  description = "List of droplet ids to which the rule sets will be applied"
  type        = "list"
  default     = []
}

variable "tags" {
  description = "List of tag ids, any droplet matching these tags will have the rule set applied"
  type        = "list"
  default     = []
}

#  HTTP
variable "allowed_outbound_http_addresses" {
  default     = ["0.0.0.0/0", "::/0"]
  type        = "list"
  description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which outbound http (port 80) traffic will be allowed."
}

variable "allowed_outbound_http_droplet_ids" {
  default     = []
  type        = "list"
  description = "An array of droplet ids to which outbound http (port 80) traffic will be allowed."
}

variable "allowed_outbound_http_tags" {
  default     = []
  type        = "list"
  description = "An array of tags of droplets to which outbound http (port 80) traffic will be allowed."
}

variable "allowed_outbound_http_load_balancer_uids" {
  default     = []
  type        = "list"
  description = "An array containing the IDs of the Load Balancers to which outbound http (port 80) traffic will be allowed."
}

# HTTPS
variable "allowed_outbound_https_addresses" {
  default     = ["0.0.0.0/0", "::/0"]
  type        = "list"
  description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which outbound https (port 443) traffic will be allowed."
}

variable "allowed_outbound_https_droplet_ids" {
  default     = []
  type        = "list"
  description = "An array of droplet ids to which outbound https (port 443) traffic will be allowed."
}

variable "allowed_outbound_https_tags" {
  default     = []
  type        = "list"
  description = "An array of tags of droplets to which outbound https (port 443) traffic will be allowed."
}

variable "allowed_outbound_https_load_balancer_uids" {
  default     = []
  type        = "list"
  description = "An array containing the IDs of the Load Balancers to which outbound https (port 443) traffic will be allowed."
}

# DNS
variable "allowed_outbound_dns_addresses" {
  default     = ["0.0.0.0/0", "::/0"]
  type        = "list"
  description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which outbound DNS (port 53) traffic will be allowed."
}

variable "allowed_outbound_dns_droplet_ids" {
  default     = []
  type        = "list"
  description = "An array of droplet ids to which outbound DNS (port 53) traffic will be allowed."
}

variable "allowed_outbound_dns_tags" {
  default     = []
  type        = "list"
  description = "An array of tags of droplets to which outbound DNS (port 53) traffic will be allowed."
}

variable "allowed_outbound_dns_load_balancer_uids" {
  default     = []
  type        = "list"
  description = "An array containing the IDs of the Load Balancers to which outbound DNS (port 53) traffic will be allowed."
}

# NTP
variable "allowed_outbound_ntp_addresses" {
  default     = ["0.0.0.0/0", "::/0"]
  type        = "list"
  description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which outbound NTP (port 123/udp) traffic will be allowed."
}

variable "allowed_outbound_ntp_droplet_ids" {
  default     = []
  type        = "list"
  description = "An array of droplet ids to which outbound NTP (port 123/udp) traffic will be allowed."
}

variable "allowed_outbound_ntp_tags" {
  default     = []
  type        = "list"
  description = "An array of tags of droplets to which outbound NTP (port 123/udp) traffic will be allowed."
}

# SSH
variable "allowed_outbound_ssh_addresses" {
  default     = ["0.0.0.0/0", "::/0"]
  type        = "list"
  description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which outbound SSH (port 22) traffic will be allowed."
}

variable "allowed_outbound_ssh_droplet_ids" {
  default     = []
  type        = "list"
  description = "An array of droplet ids to which outbound SSH (port 22) traffic will be allowed."
}

variable "allowed_outbound_ssh_tags" {
  default     = []
  type        = "list"
  description = "An array of tags of droplets to which outbound SSH (port 22) traffic will be allowed."
}

variable "allowed_inbound_ssh_tags" {
  default     = []
  type        = "list"
  description = "List of droplet tags from which SSH is allowed."
}

variable "allowed_inbound_ssh_droplet_ids" {
  default     = []
  type        = "list"
  description = "List of droplet ids from which SSH is allowed."
}

variable "allowed_inbound_ssh_adresses" {
  default     = ["0.0.0.0/0", "::/0"]
  type        = "list"
  description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs from which the inbound SSH traffic will be accepted."
}

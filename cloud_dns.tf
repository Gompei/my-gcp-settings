resource "google_dns_managed_zone" "google_dns_managed_zone" {
  name        = "my-gcp-domain-zone"
  dns_name    = "gcp.${var.my_domain}."
  description = "my-gcp-domain-zone"
  visibility  = "public"
}

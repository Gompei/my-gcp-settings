resource "google_dns_managed_zone" "google_dns_managed_zone" {
  name        = "my-gcp-domain-zone"
  dns_name    = "gcp.${var.my_domain}."
  description = "my-gcp-domain-zone"
  visibility  = "public"
}

resource "google_dns_record_set" "rough_frontend" {
  name = "rough.${google_dns_managed_zone.google_dns_managed_zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.google_dns_managed_zone.name
  rrdatas = ["199.36.158.100"]
}

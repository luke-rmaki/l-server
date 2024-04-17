
# Creates the CNAME record that routes http_app.${var.cloudflare_zone} to the tunnel.
resource "cloudflare_record" "l-server" {
  zone_id = var.cloudflare_zone_id
  name    = "server"
  value   = aws_instance.l-server.public_ip
  type    = "A"
  proxied = false
  ttl = 60
}


# # Creates an Access application to control who can connect.
# resource "cloudflare_access_application" "l-server" {
#   zone_id          = var.cloudflare_zone_id
#   name             = "Access application for server.${var.cloudflare_zone}"
#   domain           = "server.${var.cloudflare_zone}"
#   session_duration = "1h"
# }

# # Creates an Access policy for the application.
# resource "cloudflare_access_policy" "l-server" {
#   application_id = cloudflare_access_application.l-server.id
#   zone_id        = var.cloudflare_zone_id
#   name           = "Policy for server.${var.cloudflare_zone}"
#   precedence     = "1"
#   decision       = "allow"
#   include {
#     email = [var.cloudflare_email]
#   }
# }

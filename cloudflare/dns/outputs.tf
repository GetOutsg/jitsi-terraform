output "jitsi_fqdn" {
  description = "FQDN for Jitsi server"
  value = cloudflare_record.jitsi.hostname 
}

output "turn_fqdn" {
  description = "FQDN for TURN server"
  value = join("", cloudflare_record.turn.*.hostname)
}


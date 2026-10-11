output "zero_trust_tunnel_cloudflared_token_lookup_account_id" {
  description = "Map of account_id values across all zero_trust_tunnel_cloudflared_token_lookup, keyed the same as var.zero_trust_tunnel_cloudflared_token_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_tunnel_cloudflared_token.zero_trust_tunnel_cloudflared_token_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "zero_trust_tunnel_cloudflared_token_lookup_token" {
  description = "Map of token values across all zero_trust_tunnel_cloudflared_token_lookup, keyed the same as var.zero_trust_tunnel_cloudflared_token_lookup except keys with no token are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_tunnel_cloudflared_token.zero_trust_tunnel_cloudflared_token_lookup : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "zero_trust_tunnel_cloudflared_token_lookup_tunnel_id" {
  description = "Map of tunnel_id values across all zero_trust_tunnel_cloudflared_token_lookup, keyed the same as var.zero_trust_tunnel_cloudflared_token_lookup except keys with no tunnel_id are omitted"
  value       = { for k, v in data.cloudflare_zero_trust_tunnel_cloudflared_token.zero_trust_tunnel_cloudflared_token_lookup : k => v.tunnel_id if v.tunnel_id != null && length(v.tunnel_id) > 0 }
}


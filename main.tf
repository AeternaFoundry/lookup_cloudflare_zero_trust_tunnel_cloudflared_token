data "cloudflare_zero_trust_tunnel_cloudflared_token" "zero_trust_tunnel_cloudflared_token_lookup" {
  for_each = var.zero_trust_tunnel_cloudflared_token_lookup

  account_id = each.value.account_id
  tunnel_id  = each.value.tunnel_id
}


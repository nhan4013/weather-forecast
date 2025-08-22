output "primary_alb_dns"  { value = module.alb_primary.alb_dns_name }
output "secondary_alb_dns"{ value = module.alb_secondary.alb_dns_name }
output "site_url"         { value = "https://${var.subdomain}.${var.domain_name}" }

variable "project"           { type = string }
variable "primary_region"    { type = string }
variable "secondary_region"  { type = string }
variable "domain_name"       { type = string } # e.g. example.com (must be a Route53 hosted zone)
variable "subdomain"         { type = string } # e.g. weather
variable "ecr_repo_name" {
  type    = string
  default = "the-weather-forecasting"
}
variable "container_port"    { 
    type = number  
    default = 80 
}
variable "cpu"               { 
    type = number  
    default = 256 
}
variable "memory"            { 
    type = number  
    default = 512 
    }

# Optional DB
variable "enable_rds"        { 
    type = bool    
    default = false 
}
variable "db_username"       { 
    type = string  
    default = "weather" 
    }
variable "db_password"       { 
    type = string  
    default = "" 
} # prefer to pass via TF_VAR_db_password

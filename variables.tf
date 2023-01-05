variable "region" {
  default     = "us-west-2"
  description = "AWS region"
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
}

variable "db_user" {
  description = "RDS root user name"
  default = "postgres"
}

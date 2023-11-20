# --- root/variables.tf ---

variable "aws_region" {
  default = "eu-central-1"
}

variable "access_ip" {
  type = string
}

# --- database variables ---

variable "dbname" {
  type = string
}

variable "dbuser" {
  type      = string
  sensitive = true
}

variable "dbpassword" {
  type      = string
  sensitive = true
}

# --- compute variables ---

variable "k3stoken" {
  type      = string
  sensitive = true
}
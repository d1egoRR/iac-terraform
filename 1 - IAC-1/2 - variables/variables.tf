variable "region" {
  description = "Región de AWS a utilizar"
  type        = string
  default     = "us-east-1"
}

variable "access_key" {
  description = "Clave de acceso de AWS"
  type        = string
  sensitive   = true
  default     = "access_key_default"
}

variable "secret_key" {
  description = "Clave secreta de AWS"
  type        = string
  sensitive   = true
  default     = "secret_key_default"
}

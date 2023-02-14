//valores default

variable "default_project" {
  description = "Nome do Projeto"
  type        = string
  default     = "lab-terraform-8249-376522"
}

// variaveis de rede

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "subnet_address" {
  description = "Endereco da rede"
  type        = string
  default     = "10.0.0.0/22"
}

variable "subnet_region" {
  description = "Regiao da subnet"
  type        = string
  default     = "us-central1"
}
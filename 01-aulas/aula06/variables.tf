variable "default_project" {
  description = "Nome do Projeto"
  type        = string
  default     = "lab-terraform-8249-376522"
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc-network"
}

variable "option_auto_create" {
  description = "Define se devem ser criadas as subnets automaticamente"
  type        = bool
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

variable "db_disk_size" {
  description = "Tamanho do disco de banco de dados"
  type        = number
  default     = 30

  validation {
    condition     = var.db_disk_size <= 50
    error_message = "O tamanho do disco deve ser menor que 50GB"
  }
}
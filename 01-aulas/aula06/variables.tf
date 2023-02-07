//valores default

variable "default_project" {
  description = "Nome do Projeto"
  type        = string
  default     = "lab-terraform-8249-376522"
}

variable "default_vm_size" {
  description = "Size padrão das VMs"
  type        = string
  default     = "e2-small"
}

variable "default_vm_image" {
  description = "Imagem padrão das VMs"
  type        = string
  default     = "debian-cloud/debian-11"
}

// variaveis de rede

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

// variaveis de processamento

variable "db_vm_name" {
  description = "Nome da vm de banco"
  type        = string
  default     = "db1"
}

variable "db_disk_size" {
  description = "Tamanho do disco de banco de dados"
  type        = number
  default     = 30

  validation {
    condition     = var.db_disk_size <= 50
    error_message = "O tamanho do disco deve ser menor ou igual a 50GB"
  }
}

variable "prov_command" {
  description = "Comando de provisionamento"
  type        = string
  default     = "sudo apt update; sudo apt-get install nginx -y"
}

variable "prov_script" {
  description = "Script de provisionamento"
  type        = string
  default     = "./scripts/prov-back.sh"
}

variable "web1_vm_name" {
  description = "Nome da vm de web"
  type        = string
  default     = "web1"
}

variable "web1_vm_zone" {
  description = "Zona da vm de web"
  type        = string
  default     = "us-central1-a"
}


variable "web2_vm_name" {
  description = "Nome da vm de web"
  type        = string
  default     = "web2"
}

variable "web2_vm_zone" {
  description = "Zona da vm de web"
  type        = string
  default     = "us-central1-b"
}
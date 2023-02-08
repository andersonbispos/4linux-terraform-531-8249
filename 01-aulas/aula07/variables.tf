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
  default     = "vpc-aula07"
}

// variaveis de processamento

variable "vm_prefix" {
  description = "Nome da vm de banco"
  type        = string
  default     = "vm"
}

variable "vm_zone" {
  description = "Zona da vm de web"
  type        = string
  default     = "us-central1-a"
}

variable "qtd_instances" {
  description = "Quantidade de instancias a serem criadas"
  type = number
  default = "3"  
}
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
  type        = number
  default     = "3"
}

variable "web1_vm_name" {
  description = "Nome da vm de web"
  type        = string
  default     = "web1"
}

variable "web2_vm_name" {
  description = "Nome da vm de web"
  type        = string
  default     = "web2"
}

// exemplos de list

variable "vm_zones" {
  description = "Zonas onde as vms serao criadas"
  type        = list(string)
  default     = ["us-central1-a", "us-central1-b"]
}

variable "webnames_br" {
  description = "Nome que serao dados as instancias web"
  type        = list(string)
  default     = ["web1", "web2"]
}

variable "webzones_br" {
  description = "Zonas onde serao criadas as instancias web"
  type        = list(string)
  default     = ["southamerica-east1-a", "southamerica-east1-c"]
}

// exemplo de set

variable "vm_name_set" {
  type    = set(any)
  default = ["vm9", "vm5", "vm7", "vm9", "vm4", "vm5"]
}

// exemplos de map

variable "vm1_defs" {
  type        = map(string)
  description = "Definicao das VMs"
  default = {
    vm_name = "web1"
    vm_zone = "us-east1-b"
  }
}

variable "vm_defs_nome_zona" {
  type        = map(string)
  description = "Definicao da VMS"
  default = {
    web1 = "southamerica-east1-a",
    web2 = "southamerica-east1-c"
  }
}

// exemplos tupla

variable "tuple" {
  type    = tuple([number, string, string, bool])
  default = [3, "elementos", "diferentes", true]
}

variable "tuple_disk" {
  type    = tuple([string, string, string, number])
  default = ["data-disk", "pd-balanced", "us-central1-b", 40]
}

// exemplo de object

variable "object" {
  type = object({
    name   = string
    region = string
    amount = number
    tags   = list(string)
  })
   default = { name = "Alfa", region = "southamerica-east1", amount = 5, tags = ["prod", "terraform"] }
}

variable "disk_object" {
  type = object({
    diskName = string
    diskType = string
    diskZone = string
    diskSize = number
  })
  default = { diskName = "dados", diskType = "pd-ssd", diskZone = "us-east1-c", diskSize = 30 }
}

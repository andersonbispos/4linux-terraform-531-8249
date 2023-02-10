// variaveis da parte 1 (rede)
variable "rede_gerenciada" {
  type    = bool
  default = "false"
}

variable "vpc_name" {
  type    = string
  default = "tf-vpc-lab"
}

variable "subnet_prefix" {
  type    = string
  default = "subnet"
}

variable "subnet_regions" {
  type        = list(any)
  description = "Regioes padroes a serem criadas as subnets"
  default     = ["us-east1", "southamerica-east1"]
}

variable "subnets_cidr" {
  type    = list(any)
  default = ["192.168.10.0/24", "192.168.20.0/24"]
}

// variaveis da parte 2 (processamento)

variable "default_machine_type" {
  type    = string
  default = "e2-micro"
}

variable "default_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "provison_backend_path" {
  type    = string
  default = "./scripts/prov-back.sh"
}


variable "dbdisk_size" {
  type    = number
  default = 50
}

variable "dbserver_name" {
  type    = string
  default = "dbserver1"
}

variable "web1name" {
  type    = string
  default = "web1"
}

variable "web1zone" {
  type    = string
  default = "us-east1-c"
}

variable "web2name" {
  type    = string
  default = "web2"
}

variable "web2zone" {
  type    = string
  default = "southamerica-east1-c"
}


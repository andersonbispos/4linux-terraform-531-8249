variable "vpc_name" {
  type    = string
  default = "vpc-network"
}

variable "project" {
  type = map(string)
  default = {
    dev  = "lab-terraform-8249-376522"
    prod = "lab-terraform-8249-376522-prod"
  }
}

variable "vm_type" {
  type = map(string)
  default = {
    dev  = "e2-small"
    prod = "e2-medium"
  }
}
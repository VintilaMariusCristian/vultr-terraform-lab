# [Q5] variabile si default-uri duplicate fata de root
variable "monthly_cost" {
  type    = number
  default = 60
  validation {
    condition     = var.monthly_cost >= 0 && var.monthly_cost <= 60
    error_message = "Costul lunar trebuie sa fie intre 0 si 60USD."

  }
}
variable "region" {
  description = "Regiunea Vultr in care se creaza vm urile"
  type        = string
  default     = "waw"
}
variable "plan" {
  description = "Planul Vultr folosit pentru Vm-uri"
  type        = string
  default     = "vc2-1c-1gb"
}
variable "os_id" {
  description = "ID-ul sistemului de operare instalat pe VM"
  type        = number
  default     = 2284
}
variable "master_prefix" {
  description = "Prefixul pentru label si hotname la nodurile master"
  type        = string
  default     = "master-node"
}
variable "tags" {
  description = "tagurile aplicate Vm urilor"
  type        = list(string)
  default     = ["vm-serif-v1"]
}
variable "enable_ipv6" {
  description = "Activeaza IPv6 pentru VM-uri"
  type        = bool
  default     = true
}
variable "disable_public_ipv4" {
  description = "Dezactiveaza adresa Ipv4 publica"
  type        = bool
  default     = false
}
variable "backups" {
  description = "Activeaza sau dezactiveaza backupurile"
  type        = string
  default     = "enabled"
}
variable "backup_schedule_type" {
  description = "Frecventa backupurilor"
  type        = string
  default     = "daily"
}
variable "worker_count" {
  description = "Numarul de VM-uri worker"
  type        = number
  default     = 3
}

variable "worker_prefix" {
  description = "Prefixul pentru label si hostname la nodurile worker"
  type        = string
  default     = "worker-node"
}
variable "master_count" {
  description = "Numarul de VM-uri master"
  type        = number
  default     = 3
}

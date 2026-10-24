# [Q7] ce limiteaza de fapt monthly_cost?
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
# [Q17] 1 vCPU / 1 GB pentru master-e
variable "plan" {
  description = "Planul Vultr folosit pentru Vm-uri"
  type        = string
  default     = "vc2-1c-1gb"
}
# [Q9] ce OS e 2284?
variable "os_id" {
  description = "ID-ul sistemului de operare instalat pe VM"
  type        = number
  default     = 2284
}
# [Q10] ce face plan-ul daca schimbi prefixul?
variable "master_prefix" {
  description = "Prefixul pentru label si hotname la nodurile master"
  type        = string
  default     = "master-node"
}
# [Q19] tag-uri
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
# [Q16] de ce 3 master-e?
variable "master_count" {
  description = "Numarul de VM-uri master"
  type        = number
  default     = 3
}
# [Q3] cum ii dai valoarea?
# [Q4] ce face (si ce nu face) sensitive = true?
variable "vultr_api_key" {
  description = "Cheia API pentru Vultr"
  type        = string
  sensitive   = true
}
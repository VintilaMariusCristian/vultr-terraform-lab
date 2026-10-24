# [Q20] flux de echipa si CI
module "vultr_cluster" {
  source = "./modules/vultr_cluster"

  monthly_cost         = var.monthly_cost
  region               = var.region
  plan                 = var.plan
  os_id                = var.os_id
  master_count         = var.master_count
  master_prefix        = var.master_prefix
  worker_count         = var.worker_count
  worker_prefix        = var.worker_prefix
  tags                 = var.tags
  enable_ipv6          = var.enable_ipv6
  disable_public_ipv4  = var.disable_public_ipv4
  backups              = var.backups
  backup_schedule_type = var.backup_schedule_type
}
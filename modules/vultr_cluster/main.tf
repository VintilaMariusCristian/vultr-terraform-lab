resource "vultr_instance" "my_instance" {
  count               = var.master_count
  plan                = var.plan
  region              = var.region
  os_id               = var.os_id
  label               = "${var.master_prefix}-${count.index + 1}"
  tags                = var.tags
  hostname            = "${var.master_prefix}-${count.index + 1}"
  enable_ipv6         = var.enable_ipv6
  disable_public_ipv4 = var.disable_public_ipv4
  backups             = var.backups
  backups_schedule {
    type = var.backup_schedule_type
  }
}
resource "vultr_instance" "workers" {
  for_each = toset([
    for i in range(var.worker_count) :
    "${var.worker_prefix}-${i + 1}"
  ])

  plan   = var.plan
  region = var.region
  os_id  = var.os_id

  label    = each.key
  hostname = each.key
  tags     = var.tags

  enable_ipv6         = var.enable_ipv6
  disable_public_ipv4 = var.disable_public_ipv4
  backups             = var.backups

  backups_schedule {
    type = var.backup_schedule_type
  }
}  
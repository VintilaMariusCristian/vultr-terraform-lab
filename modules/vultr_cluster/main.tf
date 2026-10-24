# [Q11] redenumire my_instance -> masters
# [Q12] count: scoaterea unui VM anume
# [Q13] SSH: lipseste ssh_key_ids
# [Q14] firewall: lipseste firewall_group_id
# [Q15] retea intre noduri
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
  # [Q8] ce se intampla cu backups = "disabled"?
  backups_schedule {
    type = var.backup_schedule_type
  }
}
# [Q22] count vs for_each (suspect AI)
# [Q28] ce ai scris singur si ce ai generat
resource "vultr_instance" "workers" {
  # [Q21] explica expresia din for_each (suspect AI)
  for_each = toset([
    for i in range(var.worker_count) :
    "${var.worker_prefix}-${i + 1}"
  ])

  plan   = var.plan
  region = var.region
  os_id  = var.os_id

  # [Q23] adrese in state si -replace (suspect AI)
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
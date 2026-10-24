# [Q24] for peste lista vs map (suspect AI)
output "master_ips" {
  description = "Numele si IP-urile VM-urilor master"
  value = {
    for vm in vultr_instance.my_instance :
    vm.label => vm.main_ip
  }
}

output "worker_ips" {
  description = "Numele si Ip-urile Vm urilor worker"
  value = {
    for vm in vultr_instance.workers :
    vm.label => vm.main_ip
  }
}
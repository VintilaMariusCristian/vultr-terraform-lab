output "master_ips" {
  description = "Numele si IP-urile VM-urilor master"
  value       = module.vultr_cluster.master_ips
}


output "worker_ips" {
  description = "Numele si Ip-urile Vm urilor worker"
  value       = module.vultr_cluster.worker_ips
}
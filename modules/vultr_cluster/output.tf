# [REVIEW] Posibil generat cu AI: descrierile sunt ale tale (se vad typo-urile),
# dar expresiile "for ... : vm.label => vm.main_ip" par luate dintr-un raspuns gata facut.
# Intrebarile 24-25 din PR. Raspunde in thread-ul de review de pe aceasta linie.
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
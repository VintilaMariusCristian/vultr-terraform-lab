terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.33.2"
    }
  }
}

provider "vultr" {
  api_key = var.vultr_api_key
  # [REVIEW] Copiat 1:1 din exemplul din documentatia providerului Vultr (nu e AI, dar nu e nici scris de tine).
  # Intrebarea 27 din PR. Raspunde in thread-ul de review de pe aceasta linie.
  rate_limit  = 100
  retry_limit = 3
}
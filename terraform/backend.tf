terraform {
    backend "azurerm" {
        resource_group_name  = "credpayRG"
        storage_account_name = "credpayproject1"
        container_name       = "statefile"
        key                  = "credpay.terraform.tfstate"
    }
  
}
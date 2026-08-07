provider "azurerm" {
    subscription_id = var.subscription_id
    features{}
}
provider "random" {}
  # Configuration options for the random provider
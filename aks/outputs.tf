output "client_cert" {
  value     = azurerm_kubernetes_cluster.this.kube_config[0].client_certificate
  sensitive = true
}


resource "local_file" "kubeconfig" {
  depends_on = [azurerm_kubernetes_cluster.this]
  filename   = "kubeconfig"
  content    = azurerm_kubernetes_cluster.this.kube_config_raw
}
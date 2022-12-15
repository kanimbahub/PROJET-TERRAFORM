resource "docker_network" "private_network" {
  name = var.network_name
}
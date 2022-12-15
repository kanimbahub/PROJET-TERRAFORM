resource "docker_volume" "mariadb_data" {
  name = var.mariadb_volume_name
}

resource "docker_volume" "wordpress_data" {
  name = var.wordpress_volume_name
}
resource "docker_image" "mariadb" {
  name         = "mariadb:${var.mariadb_version}"
  keep_locally = false
}

resource "docker_image" "wordpress" {
  name         = "wordpress:${var.wordpress_version}"
  keep_locally = false
}
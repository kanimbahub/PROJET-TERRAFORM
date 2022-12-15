resource "docker_container" "mariadb" {
  image   = "mariadb:${var.mariadb_version}"
  name    = var.mariadb_container_name
  restart = "always"
  network_mode = var.network_name
  ports {
    internal = 3306
    external = var.mariadb_external_port
  }
  mounts {
    type = "volume"
    target = "/var/lib/mysql"
    source = var.mariadb_volume_name

  }
  env = [
     "MYSQL_ROOT_PASSWORD=${var.mariadb_root_password}",
     "MYSQL_DATABASE=${var.mariadb_wordpress_db}",
     "MYSQL_USER=${var.mariadb_wordpress_user}",
     "MYSQL_PASSWORD=${var.mariadb_wordpress_password}"
  ]
}

resource "docker_container" "wordpress" {
  image   = "wordpress:${var.wordpress_version}"
  name    = var.wordpress_container_name
  restart = "always"
  network_mode = var.network_name
  ports {
    internal = 80
    external = var.wordpress_external_port
  }
  mounts {
    type = "volume"
    target = "/var/www/html"
    source = var.wordpress_volume_name

  }
  env = [
     "WORDPRESS_DB_HOST=${var.mariadb_container_name}",
     "WORDPRESS_DB_USER=${var.mariadb_wordpress_user}",
     "WORDPRESS_DB_PASSWORD=${var.mariadb_wordpress_password}",
     "WORDPRESS_DB_NAME=${var.mariadb_wordpress_db}"
  ]

}
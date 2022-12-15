# Network
variable "network_name" {
    type        = string
}
variable "mariadb_external_port" {
    type        = string
}
variable "wordpress_external_port" {
    type        = string
}

# Volumes
variable "mariadb_volume_name" {
    type        = string
}
variable "wordpress_volume_name" {
    type        = string
}

# Containers
variable "mariadb_container_name" {
    type        = string
}
variable "wordpress_container_name" {
    type        = string
}
variable "mariadb_version" {
    type        = string
}
variable "wordpress_version" {
    type        = string
}

# Variables
variable "mariadb_root_password" {
    type        = string
}
variable "mariadb_wordpress_user" {
    type        = string
}
variable "mariadb_wordpress_password" {
    type        = string
}
variable "mariadb_wordpress_db" {
    type        = string
}
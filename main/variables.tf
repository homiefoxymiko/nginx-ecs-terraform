variable "aws_region" {
  type = string
  default = "eu-west-2"
}

variable "app_name" {
  type = string
  default = "NginxTerraformAssignment"
}

variable "app_environment" {
  type = string
  default = "prod"
}

variable "aws_key_pair_name" {
  type = string
  default = "aws-london-osheg"
}

variable "admin_sources_cidr" {
  type = list(string)
  description = "List of IPv4 CIDR blocks from which to allow admin access"
  default = ["192.168.0.0/16"]
}

variable "app_sources_cidr" {
  type = list(string)
  description = "List of IPv4 CIDR blocks from which to allow application access"
  default = ["0.0.0.0/0"]
}

variable "cluster_runner_type" {
  type = string
  default = "t3.medium"
}

variable "cluster_runner_count" {
  type = string
  default = "1"
}

variable "nginx_app_name" {
  default = "nginx"
}

variable "nginx_app_image" {
  default = "nginx"
}

variable "nginx_app_port" {
  default = 80
}

variable "nginx_app_count" {
  description = "Number of Docker containers to run"
  default = 2
}

variable "nginx_fargate_cpu" {
  default = "1024"
}

variable "nginx_fargate_memory" {
  default = "2048"
}

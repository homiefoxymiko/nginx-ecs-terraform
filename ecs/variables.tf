variable "aws_region" {
  type = string
}

variable "app_name" {
  type = string
}

variable "app_environment" {
  type = string
}

variable "aws_key_pair_name" {
  type = string
}

variable "admin_sources_cidr" {
  type = list(string)
}

variable "app_sources_cidr" {
  type = list(string)
}

variable "cluster_runner_type" {
  type = string
}

variable "cluster_runner_count" {
  type = string
}

variable "nginx_app_name" {
}

variable "nginx_app_image" {
}

variable "nginx_app_port" {
}

variable "nginx_app_count" {
}

variable "nginx_fargate_cpu" {
}

variable "nginx_fargate_memory" {
}

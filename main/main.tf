terraform {
  backend "s3" {
    bucket = "assignment-tf-state"
    key    = "nginx-app/assignment.tfstate"
    region = "eu-west-2"
  }
}

module "ecs_assignment" {
source = "../ecs/"

app_name = var.app_name
app_environment = var.app_environment
aws_region = var.aws_region
app_sources_cidr = var.app_sources_cidr
admin_sources_cidr = var.admin_sources_cidr
aws_key_pair_name = var.aws_key_pair_name
nginx_app_image = var.nginx_app_image
nginx_app_port = var.nginx_app_port
nginx_app_count = var.nginx_app_count
nginx_app_name = var.nginx_app_name
nginx_fargate_cpu = var.nginx_fargate_cpu
nginx_fargate_memory = var.nginx_fargate_memory
cluster_runner_type = var.cluster_runner_type
cluster_runner_count = var.cluster_runner_count
}


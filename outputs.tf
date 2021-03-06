output "server_ids" {
  value = "${module.nginx_server.instance_id}"
}

output "private_ips" {
  value = "${module.nginx_server.private_ip}"
}

output "bastion_public_ip" {
  value = "${var.bastion_host_public_ip}"
}

output "server_http_port" {
  value = "${var.server_http_port}"
}

output "server_https_port" {
  value = "${var.server_https_port}"
}
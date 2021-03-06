provider "oci" {
  tenancy_ocid     = "${var.tenancy_ocid}"
  user_ocid        = "${var.user_ocid}"
  fingerprint      = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region           = "${var.region}"
}

module "nginx" {
  source                      = "../../"
  compartment_id              = "${var.compartment_id}"
  vcn_ocid                    = "${var.vcn_ocid}"
  bastion_host_public_ip      = "${var.bastion_host_public_ip}"
  bastion_host_user           = "${var.bastion_host_user}"
  bastion_ssh_authorized_keys = "${coalesce(var.bastion_ssh_authorized_keys, var.server_ssh_authorized_keys)}"
  bastion_ssh_private_key     = "${coalesce(var.bastion_ssh_private_key, var.server_ssh_private_key)}"
  server_count                = "${var.server_count}"
  server_subnet_ids           = "${var.server_subnet_ids}"
  server_display_name         = "${var.server_display_name_prefix}"
  server_shape                = "${var.server_shape}"
  server_image_id             = "${var.image_id}"
  server_http_port            = "${var.http_port}"
  server_https_port           = "${var.server_https_port}"
  server_ssh_authorized_keys  = "${var.server_ssh_authorized_keys}"
  server_ssh_private_key      = "${var.server_ssh_private_key}"
  ssl_cert_file_path          = "${var.ssl_cert_file_path}"
  ssl_cert_key_file_path      = "${var.ssl_cert_key_file_path}"
}

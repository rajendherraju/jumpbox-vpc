output "vpc_id" {
  value = module.vpc.vpc_id
}

output "jumpbox_public_ip" {
  value = module.jumpbox.jumpbox_public_ip
}

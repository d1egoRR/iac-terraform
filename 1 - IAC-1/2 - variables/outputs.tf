output "instance_private_ip" {
  description = "Dirección IP privada de la instancia"
  value       = aws_instance.example.private_ip
}

output "instance_public_ip" {
  description = "Dirección IP pública de la instancia"
  value       = aws_instance.example.public_ip
}

output "instance_id" {
  description = "ID de la instancia"
  value       = aws_instance.example.id
}

output "name_tag" {
  description = "Nombre de la instancia"
  value       = aws_instance.example.key_name
}

output "instance_type" {
  description = "Tipo de instancia"
  value       = aws_instance.example.instance_type
}

output "instance_private_ip" {
  description = "Dirección IP privada de la instancia"
  value = {
    for instance, i in aws_instance.example : instance => i.private_ip
  }
}

output "instance_public_ip" {
  description = "Dirección IP pública de la instancia"
  value = {
    for instance, i in aws_instance.example : instance => i.public_ip
  }
}

output "instance_id" {
  description = "ID de la instancia"
  value = {
    for instance, i in aws_instance.example : instance => i.id
  }
}

output "instance_type" {
  description = "Tipo de instancia"
  value = {
    for instance, i in aws_instance.example : instance => i.instance_type
  }
}

output "all_info" {
  description = "Información completa de todas las instancias"
  value = {
    for instance, i in aws_instance.example : instance => {
      private_ip    = i.private_ip
      public_ip     = i.public_ip
      id            = i.id
      instance_type = i.instance_type
    }
  }
}

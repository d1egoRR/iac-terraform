output "all_info" {
  description = "Información completa de las instancias y del workspace actual"
  
  value = merge(
    { workspace = terraform.workspace },
    {
      for instance, i in aws_instance.example : instance => {
        private_ip    = i.private_ip
        public_ip     = i.public_ip
        id            = i.id
        instance_type = i.instance_type
      }
    }
  )
}

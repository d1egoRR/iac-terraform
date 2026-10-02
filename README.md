# Prácticas de Terraform

Repositorio de prácticas para aprender Infrastructure as Code (IaC) con Terraform y AWS. Los ejercicios están separados por tema y deben ejecutarse desde su propia carpeta.

## Contenido IAC-1/1

- `1 - IAC-1/1 - basics`: configuración inicial de Terraform y creación de una instancia EC2.
- `1 - IAC-1/2 - variables`: uso de variables y valores configurables.
- `1 - IAC-1/3 - functions`: prácticas con funciones de Terraform.
- `1 - IAC-1/4 - modules`: organización de la infraestructura en módulos.
- `1 - IAC-1/5 - structure`: organización de archivos, entornos y workspaces.

## Requisitos

- Terraform CLI instalado.
- Una cuenta de AWS con permisos adecuados para los recursos de cada práctica.
- Credenciales de AWS configuradas localmente, por ejemplo mediante AWS CLI o un perfil de AWS.

## Flujo de trabajo

En PowerShell, cambia a la carpeta de una práctica antes de ejecutar Terraform:

```powershell
Set-Location "1 - IAC-1/2 - variables"
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

Revisa el plan antes de aplicar cambios. Al terminar una práctica que haya creado recursos, elimínalos para evitar cargos:

```powershell
terraform destroy
```

Repite el flujo desde la carpeta de cada ejercicio. No ejecutes `apply` o `destroy` desde la raíz del repositorio.

## Referencia

- [Video de referencia](https://www.youtube.com/watch?v=Z94DYoF5ufg)

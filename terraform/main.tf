# Define o provider Docker (kreuzwerker) na versão 3.x
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Usa o daemon Docker local (sem configuração adicional necessária)
provider "docker" {}

# Faz o pull da imagem Ubuntu 22.04 do Docker Hub
resource "docker_image" "ubuntu" {
  name = "ubuntu:22.04"
}

# Cria o container Ubuntu e mantém ele rodando com sleep infinity
resource "docker_container" "servidor" {
  name    = "ubuntu-server"
  image   = docker_image.ubuntu.image_id
  command = ["sleep", "infinity"]
}

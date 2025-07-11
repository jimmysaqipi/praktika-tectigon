terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}


provider "docker" {
  registry_auth {
    address  = "index.docker.io/v1/"
    username = "gimi89"  
    password = var.docker_hub_password  
  }
}


resource "docker_image" "praktika_image" {
  name = "gimi89/praktika-tectigon:latest"
  keep_locally = true
}

resource "docker_container" "praktika_container" {
  name  = "praktika-container"
  image = docker_image.praktika_image.image_id

  ports {
    internal = 8500
    external = 8500
  }
}
# this is terraform file to install nginx using docker

terraform {
  required_providers {
    # We recommend pinning to the specific version of the Docker Provider you're using
    # since new versions are released frequently
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
} 

# Configure the docker provider
provider "docker" {
}

resource "docker_image" "nginx-img" {
    name = "nginx:latest"
    keep_locally = false
}

resource "docker_container" "nginx-con" {
  name = "my-nginx-container"
  image = docker_image.nginx-img.name

  ports {
    internal = 80
    external = 80
  }
}
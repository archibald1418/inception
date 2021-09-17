# Inception

This is an exercise on building a Docker container cluster inside a virtual machine (here, Debian 10)
using Docker, Docker-Compose and Docker Volume for data persistence.

All the Dockerfiles are written by myself,
the only pulls are Debian and Alpine

## Description

A Docker cluster is a Wordpress website working inside a Docker Network with default options.

Backend side is a MySql Database.

Frontend side are Wordpress standard files.

.php files are processed with NGINX's FAST-CGI module with php-fpm working as a service on a separate container.

Wordpress files are changed on the basis of service_names and users inside the MySQL database.

### The resulting Docker Network will work just as described in the diagram below

![Inception netowrk](./assets/Inception_network.png)

### Persistent data storage

Database files are mounted into ```~/data/dbdata```

Wordpress files are mounted into ```~/data/wordpress```

## Getting Started

#### Mac OS
* Download Docker Desktop, Docker CLI or a Docker Virtual Machine
	
	[Docker Desktop download](https://docs.docker.com/desktop/mac/install/)
* ```cd``` into the root of the project
* run ```make``` 
  
#### Debian 10
* In the root folder of the project run ```bash ./srcs/debian_setup.sh```
	This will install all the necessary dependencies for Docker Engine
* ```cd``` into the root of the project
* run ```make```  


All the services are installed within the Dockerfiles.

### Entering the website

* The website is available at https://localhost:443

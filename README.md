Practice with Docker
=======

## Requirements
 - (Docker)[https://docs.docker.com/install/]
 - (docker-compose)[https://docs.docker.com/compose/install/]

### Build
```bash
docker-compose build
```
### Setting 
Copy the docker-compose.override.yml.dist file to docker-compose.override.yml
```bash
cp docker-compose.override.yml.dist docker-compose.override.yml
```
### Run
```bash
docker-compose up -d
```
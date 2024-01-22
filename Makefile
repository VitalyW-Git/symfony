##################
# Variables
##################

DOCKER_COMPOSE = docker compose -f ./docker/docker-compose.yml
DOCKER_COMPOSE_PHP_FPM_EXEC = ${DOCKER_COMPOSE} exec -u www-data php-fpm

##################
# Docker compose
##################

start:
	${DOCKER_COMPOSE} start

build:
	${DOCKER_COMPOSE} build

stop:
	${DOCKER_COMPOSE} stop

up:
	${DOCKER_COMPOSE} up -d --remove-orphans

down:
	${DOCKER_COMPOSE} down

dc_ps:
	${DOCKER_COMPOSE} ps

dc_logs:
	${DOCKER_COMPOSE} logs -f

php:
	${DOCKER_COMPOSE} exec -u www-data php-fpm bash

test:
	${DOCKER_COMPOSE} exec -u www-data php-fpm bin/phpunit


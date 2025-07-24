.PHONY: up down build logs frontend-backend-down clean

up:
	docker-compose up --build

down:
	docker-compose down

build:
	docker-compose build

logs:
	docker-compose logs -f

frontend:
	docker-compose exec frontend sh

backend:
	docker-compose exec backend sh

frontend-down:
	docker-compose stop frontend

backend-down:
	docker-compose stop backend

clean:
	docker-compose down -v --remove-orphans

fclean: clean
	docker system prune -af --volumes

help:
	@echo "Available targets:"
	@echo "  up                Build and start all containers"
	@echo "  down              Stop and remove all containers"
	@echo "  build             Build all containers"
	@echo "  logs              Show logs for all services"
	@echo "  frontend          Open a shell in the frontend container"
	@echo "  backend           Open a shell in the backend container"
	@echo "  frontend-down     Stop the frontend container"
	@echo "  backend-down      Stop the backend container"
	@echo "  clean             Remove containers,
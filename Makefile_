.PHONY: setup up d b ps node

setup:
	@make up
	@make ps
d:
	docker compose down
up:
	docker compose up -d
ps:
	docker compose ps
web:
	docker compose web node bash


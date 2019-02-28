# Makefile for Councilmatic Stack

include .env

help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  dbinit              Initialize the database"

dbinit:
	@docker exec $(shell docker-compose ps -q scrapers) pupa dbinit us

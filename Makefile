dev:
	docker-compose up -d dev

build_deps:
	docker-compose up deps

shell:
	docker-compose exec dev sh

workdir = /go/src/github.com/Coolomina/terraform_plugin_boilerplate
plugin_dir = $(workdir)/terraform/plugins

compile_plugin:
	docker-compose exec dev sh -c "mkdir -p $(plugin_dir) && cd src && go build -o $(plugin_dir)/terraform-provider-example"

init:
	docker-compose exec dev sh -c "cd terraform && terraform init -plugin-dir $(plugin_dir)"

plan:
	docker-compose exec dev sh -c "cd terraform && terraform plan"

apply:
	docker-compose exec dev sh -c "cd terraform && terraform apply"
	
AWSECR=848984447616.dkr.ecr.us-east-1.amazonaws.com

DOCKER=docker
DOCKERBUILD=$(DOCKER) build
DOCKERRUN=$(DOCKER) run

all: terraform_apply

install:
	sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	docker-compose --version
	sudo pip install awscli
	aws --version
	aws configure

terraform_apply:
	@echo Terraform UP
	terraform init
	@echo $$AKEY
	@echo $$SKEY
	terraform apply -var 'access_key=$(AWSAccessKeyId)' -var 'secret_key=$(AWSSecretKey)'

terrdown:
	@echo Terraform DOWN
	terraform destroy

ansible:
	@echo Ansible UP

build:
	@login=$(aws ecr --profile alex get-login --no-include-email --region us-east-1 | sed 's|https://||')
	@$(shell login)
	docker-compose up -d
	#docker-compose logs -f

pinterest-api-server:
	@echo "Docker run service..."
	$(DOCKERRUN) \
	--rm \
	-dt \
	-p 8088:8088 \
	--name=pinterest-api-server \
	-v $(pwd)/app_log:/app/logs_vol \
	--net my_app \
	-e PROD='1' \
	$(AWSECR)/pinterest-api-server

clean:
	terraform destroy -var 'access_key=$(AWSAccessKeyId)' -var 'secret_key=$(AWSSecretKey)'
#	docker-compose stop
#	docker-compose rm -f
#	docker rm $$(docker ps -a -f status=exited -q)
#	docker rmi $$(docker images -a -q)


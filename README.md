# elastalert-server_praeco_docker-compose_sample

```
mkdir -p ./mariadb/data
chmod -R 777 ./mariadb/data
mkdir -p ./mariadb/log
mkdir -p ./praeco/rule_templates
chmod -R 777 ./mariadb/log
chmod -R 777 ./praeco/rules ./praeco/rule_templates

# docker-compose v2
docker compose up -d --build
```

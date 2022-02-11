# sql-cliente
Script de banco de dados e seleções dos dados utilizando docker

Executar banco de dados MySQL:

```sh
$ docker run --rm -it --name mysql-test -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=true mysql:5.7
```

Executar comandos dentro do container do banco de dados:

```sh
$ docker exec -it mysql-test mysql
```

# Go-Notes

Aplicação criada para a disciplina de Sistemas Operativos 25/26.

## Configuração inicial

Fazer clone do repositório e executar:

```
go mod init go-notes
go get github.com/gofiber/fiber/v2
go get github.com/gofiber/template/html/v2
go get github.com/jackc/pgx/v5
go get golang.org/x/crypto/bcrypt
go mod tidy
```

## Compilação

Para compilar a aplicação é necessário ter o Go instalado no sistema:

```
go build -o go-notes-app .
```

## Execução

Antes de executar a aplicação é necessário configurar as seguintes variáveis de ambiente, mais concretamente as credenciais de acesso à base de dados.

```
# Configuração do Servidor
export SERVER_PORT=:8080

# Configuração da Base de Dados
export DB_HOST=localhost
export DB_PORT=5432
export DB_USER=db_user
export DB_PASSWORD=db_password
export DB_NAME=app_db
export DB_SSLMODE=disable
```

Para executar, basta executar no terminal `./go-notes-app`. 
Isto irá arrancar um servidor na porta definida em SERVER_PORT (por defeito :8080).
Pipeline Tests

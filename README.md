# debezium_test

Оригинал:
https://github.com/debezium/debezium-examples/tree/main/tutorial#using-sql-server


# Run
docker-compose up

# Run in SQL server
db_init.sql

# Start SQL Server connector
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @register-sqlserver.json

Visit http://localhost:8080/overview 
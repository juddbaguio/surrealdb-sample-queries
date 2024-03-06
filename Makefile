setup-surreal:
	docker run -u root --name surrealdb-cater-app -p 8000:8000 -v ./db_data:/db_data -d surrealdb/surrealdb start --log debug --auth -u root -p root file:/db_data/db_data.db
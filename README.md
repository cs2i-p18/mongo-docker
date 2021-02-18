# MongoDB - Docker configuration

## Containers

| Container | Description | Default port |
|---|---|---|
| mongodb | MongoDB Community Server | 27017 |
| mongo-express | Mongo Express |8081|

> Edit `.env` file to change default configuration.

## Start containers

```bash
# Manually
docker-compose up -d

# Using make
make up
```

## Stop containers

```bash
# Manually
docker-compose down

# Using make
make down
```

## Other commands

```bash
# Stop containers and delete related volumes
make downwipe

# Connect to container's bash
make shell

# Connect to MongoDB's shell
make mongo
```

## Mongo Express GUI

```bash
# Mongo Express
localhost:8081
```
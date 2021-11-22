# Creating a Rails Application with PostgreSQL and MailCatcher running in Docker
Initial files to develop a docker rails environment

# Requisites:
1. Docker installed in your system. Tutorial: https://docs.docker.com/engine/install/ubuntu/
2. Install docker-compose too. Link: https://docs.docker.com/compose/install/
3. Install git. Link: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

# Tutorial

## Build dockerfile
```
docker-compose build
```

## Database configuration
First give the permissions:
```
sudo chown -R $USER:$USER .
```

### Create the database
1. Stop the containers:
```
docker-compose down
```

2. Create the database:
```
docker-compose run web rails db:create
```

## Up your application
```
docker-compose up -d
```
And view in your browser in http://localhost:3000/

## Run only the console of your Rails application
```
docker-compose run --rm web rails c && docker-compose down
```

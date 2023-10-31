- # Testing tasks: 
Run script: `npm run test`
- # Linting tasks:
Run script: `npm run lint`


### RUNNING THE APP

*All the guideline is based on the location in `./fortrisTest` path
*The node version used is 18.13.0


## MYSQL: 
# PULLING IMAGE:
- Run script: `docker pull mysql:latest`

RUNNING CONTAINER 
- Run script: `docker run -d -e MYSQL_ROOT_PASSWORD= -e MYSQL_ROOT_HOST=% -p 3306:3306 mysql:latest`

RESTORING MYSQL BACKUP:

- Copy backup file  to the container running this script:
`docker cp fortris.sql <container_name>:fortris.sql`

- Access container:
Running this scipt: `docker exec -it <container_name> bash`

- Inside the container, restore backup running this script: 
`mysql -u root fortris < fortris.sql`

## API:
RUN SCRIPT: `cd fortrisback && npm cache clear --force && nvm use 18.13.0 && npm start`

## FRONT:
RUN SRCIPT: `cd fortrisfront && npm cache clear --force && nvm use 18.13.0 && npm run start:proxy`


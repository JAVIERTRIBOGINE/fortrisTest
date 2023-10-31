# INSTALLING
Execute the next scripts in order:
- git clone git@github.com:JAVIERTRIBOGINE/fortrisTest.git
- cd fortrisTest
- git clone git@github.com:JAVIERTRIBOGINE/demotest.git
- git clone git@github.com:JAVIERTRIBOGINE/fortrisback.git

********************
The front and api apps have been developed in node version: 18.13.0
- nvm use 18.13.0
************************************
- cd fortrisback
- npm i
- cd ../demotest
- npm i

The solution is formed by:
- Front App: Angular
- Api App: nest.js
- Database: mysql
mysql instance is taken by a docker image.


# RUNNING THE SOLUTION

*********
IMPORTANT!
All the guideline is based on the location in `./fortrisTest` path
**********************



## MYSQL: 
# PULLING IMAGE:
- Run script: `docker pull mysql:latest`

RUNNING CONTAINER 
- Run script: `docker run -d -e MYSQL_ROOT_PASSWORD= -e MYSQL_ROOT_HOST=% -p 3306:3306 mysql:latest`

RESTORING MYSQL BACKUP:

- Copy backup file  to the container running this script:
`docker cp fortrisDef.sql <container_name>:fortris.sql`

- Access container:
Running this scipt: `docker exec -it <container_name> bash`

- Inside the container, restore backup running this script: 
`mysql -u root fortris < fortris.sql`

## API:
RUN SCRIPT: `cd fortrisback && npm cache clear --force && nvm use 18.13.0 && npm start`

## FRONT:
RUN SRCIPT: `cd demotest && npm cache clear --force && nvm use 18.13.0 && npm run start:proxy`

# TESTING: 
Run script: `npm run test`
# LINTING:
Run script: `npm run lint`


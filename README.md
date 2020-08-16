# UsersCRUD
This web app allows admins to store and manage users' accounts data in MySQL database using CRUD functions of persistent storage.

# Content
What you can do:
- login and logout to admin panel using admin's credentials
- create new user
- show user's data
- edit user's data
- remove user from database

# Additional information

Sample data: [sql.dump](../blob/master/LICENSE)


Design patterns used:
- DAO
- builder
- MVC

Technologies used: 
- Java 14
- Servlets
- JSTL
- MySQL
- Maven
- Log4j2 + LMAX Disruptor for async logging

Libraries used:
- JBCrypt(https://mvnrepository.com/artifact/org.mindrot/jbcrypt) - password encryption/decryption
- MySQL Connector/J (https://mvnrepository.com/artifact/mysql/mysql-connector-java) - connection to database
- Java Servlet API - (https://mvnrepository.com/artifact/javax.servlet/javax.servlet-api) - servlets support
- JSTL (https://mvnrepository.com/artifact/javax.servlet/jslt/1.2) - JSTL support
- Log4j2 API, Core, Web (https://mvnrepository.com/artifact/org.apache.logging.log4j) + LMAX Disruptor (https://mvnrepository.com/artifact/com.lmax/disruptor)

# Copyright
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# dhis-bzr
Scripts to branch or update the DHIS Bazaar repository from Launchpad.

### Dependencies
- [postgres](http://www.postgresql.org/download/)
- [maven](https://maven.apache.org/)

*You can use brew to install these dependencies*

### Initialize your application

1. Create your dhis.conf file

  - Choose what directory to use for `DHIS2_HOME`. DHIS2 will use this to store logs, apps etc.
  - Copy [dhis.conf.example](https://github.com/DWB-eHealth/dhis-bzr/blob/master/dhis.conf.example) into this directory and remove ".example" extension from the file
  - Modify the file if needed
  - Save the file


2. Create a DHIS user in PostgreSQL by running the following commands in your terminal:

  ```
  createuser dhis
  createdb dhis2 -O dhis
  ```

3. Add the following environment variables to your ~/.bashrc or ~/.zshrc file and modify them as necessary:

  ```
  export MAVEN_OPTS="-Xms1024m -Xmx2048m -XX:NewSize=256m -XX:MaxNewSize=356m -XX:PermSize=512m -XX:MaxPermSize=1024m"
  export JAVA_OPTS="-Xms1024m -Xmx2048m -XX:NewSize=256m -XX:MaxNewSize=356m -XX:PermSize=512m -XX:MaxPermSize=1024m"
  export DHIS2_HOME= <same directory that contains your dhis.conf file>
  ```

4. Start the PostgreSQL server if you do not already have it running.

5. Run the update code script
  ```./update_code.sh``` from your cloned repository

  *NOTE: Depending on the connectivity, this step might take more than 30 mins*

6. Build the code by running the following
  * Goto ***/dhis-bzr/trunk/dhis-2***
  * Run ```./build.sh```
  * Wait until it finishes

7. Start your server
  * Goto ***dhis-bzr/trunk/dhis-2/dhis-web/dhis-web-portal*** folder
  * Run ```mvn jetty:run-war```
  * *Once you see "Started Jetty Server" on your terminal, your DHIS server is up*

8. Login with DHIS [default username and password](https://docs.dhis2.org/master/en/user/html/mod2_2.html).
  *See the 6th point of Starting up with a blank database column*

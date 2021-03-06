CALL %~dp0env.bat

SET PORT_PREFIX=18
SET PROJECT_PATH=%~dp0workspace/git/qalingo-b2c-web-classic-fo-bo
SET JAVA_OPTS=-Xmx1024m -XX:MaxPermSize=256m -Dport.prefix=%PORT_PREFIX% -Dproject.path=%PROJECT_PATH% -Dcatalog.asset.path=%CATALOG_ASSET_PATH% -Xdebug -Xrunjdwp:transport=dt_socket,address=%PORT_PREFIX%000,server=y,suspend=n 

SET CATALINA_HOME=%~dp0servers\server-apache-tomcat-7.0.22-frontoffice-mcommerce
REM SET CATALINA_OPTS=

SET PATH=%PATH%;%CATALINA_HOME%\bin;

%CATALINA_HOME%\bin\startup.bat 
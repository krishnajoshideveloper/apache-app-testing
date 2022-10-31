CALL docker container stop apache-test-app-v2
CALL docker container rm apache-test-app-v2
CALL docker container run -d --name apache-test-app-v2 -p 7091:80 -v /temp-v2:/temp krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v2
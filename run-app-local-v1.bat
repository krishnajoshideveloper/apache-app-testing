CALL docker container stop apache-test-app-v1
CALL docker container rm apache-test-app-v1
CALL docker container run -d --name apache-test-app-v1 -p 7090:80 -v /temp:/temp krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v1
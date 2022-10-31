CALL docker container stop apache-test-app-v1
CALL docker container rm apache-test-app-v1
CALL docker image rm krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v1
CALL docker build -t krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v1 -f Dockerfile.v1 .
@REM CALL docker push krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v1

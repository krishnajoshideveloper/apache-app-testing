CALL docker container stop apache-test-app-v2
CALL docker container rm apache-test-app-v2
CALL docker image rm krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v2
CALL docker build -t krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v2 -f Dockerfile.v2 .
@REM CALL docker push krishnetshoppingapp.azurecr.io/sample-ang-app-to-test-apachehosting:v2

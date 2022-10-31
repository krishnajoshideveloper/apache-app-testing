# Host angular app on apache.

## About app

This is very sample app to test routing for SPA applications on apache server.

## Building images.

1. Reproducing Issue - build-and-push-v1.bat - This script create image with httpd server with default configuration - no config change. Container spinned with this image would reproduce 404 issue. Please modify the image name & tag as per container registry.

2. Fixing the issue - build-and-push-v2.bat - This script create image with httpd server with modified httpd configuration - httpd.conf file is changed. Container spinned with this image would work perfectly for SPA applications. Please modify the image name & tag as per your container registry.

## Fix done in apache server.

We have to specify FallbackResource for our app. For example we are hosting angular app in apps folder, hence configure directory as below.
<Directory "/usr/local/apache2/htdocs/apps/">
Options Indexes FollowSymLinks
AllowOverride None
Require all granted
FallbackResource /apps/index.html
</Directory>

<a href="https://github.com/krishnajoshideveloper/host-angular-app-on-apache-server/blob/master/apache/httpd.conf">Sample httpd.conf file</a>

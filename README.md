# Sample example to Host angular app on apache.

## About app

This is very sample just to test routing on apache server.

## Building images.

1. build-and-push-v1.bat - This script create image with httpd server with default configuration - no config change. Container spinned with this image would reproduce 404 issue. Please modify the image name & tag as per container registry.

2. build-and-push-v2.bat - This script create image with httpd server with modified httpd configuration - httpd.conf file is changed. Container spinned with this image would work perfectly for SPA applications. Please modify the image name & tag as per your container registry.

## Fix done in apache server.

We have to specify FallbackResource for our app. For example we are hosting angular app in apps folder, hence configure directory as below.
<Directory "/usr/local/apache2/htdocs/apps/">
Options Indexes FollowSymLinks
AllowOverride None
Require all granted
FallbackResource /apps/index.html
</Directory>

Sample httpd.conf file is kept in repository at apache/httpd.conf

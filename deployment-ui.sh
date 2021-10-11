#!/bin/bash
git clone git@bitbucket.org:Zencode_Projects/digitalxchange-ui.git -b Uat
# Predefined Paths
#artifactPath="$pwd/digitalxchange-ui/dist"

cd digitalxchange-ui


#Installing Dependancies
npm install

 #Building as a package
npm run build -- --configuration uat

# Copying the Artifact to the Dev Server
scp -r  dist/my-app/* /usr/share/nginx/html/

cd ../
scp ./default /etc/nginx/sites-enabled/

service nginx restart

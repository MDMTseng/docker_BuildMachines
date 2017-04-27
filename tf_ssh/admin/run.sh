volumeName=b1_vol
docker volume ls|grep $volumeName
[ $? -ne 0 ]&&(echo "cannot find docker volume:$volumeName. creat it"; docker volume create $volumeName)
docker run -it \
-v $volumeName:/workspace \
-v /Library/WebServer/Documents/webup:/WEBUP \
-v /Users/ctseng/workspace:/ct_ws \
--name tf_ssh tf_ssh /bin/bash

docker rm tf_ssh


volumeName=b1_vol
docker volume ls|grep $volumeName
[ $? -ne 0 ]&&(echo "cannot find docker volume:$volumeName. creat it"; docker volume create $volumeName)
username=$1
[ -z $username ]&& echo "specify your username.."&& exit 1
docker run -d \
-p 2022:22 \
-v $volumeName:/home/$username/workspace \
-v b1_AUS:/home/$username/workspace_AUS \
-v /Users/ctseng/Documents/workspace/BANZAI_X/CHOPES/:/home/$username/CHPX \
b1


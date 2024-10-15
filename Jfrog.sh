##Install in Amazon Ubuntu
sudo usermod -aG docker $USER
docker pull docker.bintray.io/jfrog/artifactory-oss:7.55.10
sudo mkdir -p ./jfrog/artifactory
sudo chown -R 1030 /jfrog/
docker run -d --name artifactory1  -p 8081:8081 -p 8082:8082  -v /jfrog/artifactory:/var/opt/jfrog/artifactory  docker.bintray.io/jfrog/artifactory-oss:7.55.10

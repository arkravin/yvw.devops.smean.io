Write-Host *************************************************************************
Write-Host This script is used to clone the project from GIT 
Write-Host
Write-Host *************************************************************************

Write-Host Get-Date


$path = "C:\Users\aravindr\devops"
If(!(test-path $path))
{
      New-Item nodeapp -ItemType Directory
}

cd nodeapp


git config --global http.sslVerify false
git clone https://github.com/arkravin/yvw.devops.smean.io.git

cd yvw.devops.smean.io
Write-Host Building image now....

docker login

docker build -t aknodeapp .

Write-Host Running our container

docker run -p 9006:3000 aknodeapp


docker tag aknodeapp:latest aravindryvw/yvwdevops:aknodeapp-onmyos

docker push aravindryvw/yvwdevops:aknodeapp-onmyos

Write-Host Docker image has been built

pause | out-null
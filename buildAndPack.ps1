Push-Location $PSScriptRoot

Push-Location $PSScriptRoot\aspnetcore-docker
dotnet restore
dotnet build
dotnet publish -o $PSScriptRoot\Site
Pop-Location

docker build -t kaatula/aspnetcore-docker:v0.2 .
docker run -p 5001:5001 -t kaatula/aspnetcore-docker:v0.2

Pop-Location

$IE=new-object -com internetexplorer.application
$IE.navigate2("http://localhost:5001/index.html")
$IE.visible=$true
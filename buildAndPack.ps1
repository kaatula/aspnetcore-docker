Push-Location $PSScriptRoot

Push-Location $PSScriptRoot\aspnetcore-docker
dotnet restore
dotnet build
dotnet publish -o $PSScriptRoot\Site
Pop-Location

docker build -t kaatula/aspnetcore-docker:v0.1 .
docker run -p 5001:5001 -t kaatula/aspnetcore-docker:v0.1

Pop-Location
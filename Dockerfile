FROM microsoft/dotnet:1.0.0-preview2-sdk

ADD Site /Site/ 
WORKDIR /Site

EXPOSE 5001

CMD dotnet aspnetcore-docker.dll
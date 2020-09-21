FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore 
#Restores the dependencies and tools of a project.

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out
#Publishes the application and its dependencies to a folder for deployment to a hosting system.

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "myWebApp.dll"]
#Execute dotnet command on myWebApp.dll as an entry point when you run the container

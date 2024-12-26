# Use the official .NET image as a build environment
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY dotnet.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:9.0
WORKDIR /app
COPY --from=build-env /app/out .


# Expose port 8080 to the outside world
EXPOSE 8080

# Set the entry point for the container
ENTRYPOINT ["dotnet", "dotnet.dll"]
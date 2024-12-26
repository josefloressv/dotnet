# .Net App
.Net application Sample


## .Net Commands

```bash
# Check version
dotnet --version

# List SDKS
dotnet --list-sdks

# Check installed SDKs
dotnet --list-runtimes

# Create a Console project
dotnet new console -o . --force 

# Create a WebApp project
dotnet new webapp -o . --force 

# Restore the project dependencies
dotnet restore

# Build the project
dotnet build

# Run the project
dotnet run

# Install package
dotnet add package Microsoft.Extensions.Configuration
```

## Docker commands

```bash
# Build the image
docker build -t dotnet:v1 .
```
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

# Run the app
docker run -itd -p 8080:8080 dotnet:v1

# Run and replace the Message variable
docker run -itd -p 8080:8080 -e 'Message=Hello from Environment Var' dotnet:v1
```

## Kubernetes

```bash
# Create Deployment
k create deployment dotnet --image=dotnet:v1 --replicas=2

# Expose
k expose deployment dotnet --type=LoadBalancer --port=8080 --target-port=8080

# Or Port-forward
k port-forward deployment/dotnet 8080:8080

```
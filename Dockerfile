FROM mcr.microsoft.com/dotnet/aspnet:8.0 as Base

# Set working directory
WORKDIR /app

# Copy application files
COPY ./api ./app
COPY ./web ./app/wwwroot

# Run the app
ENTRYPOINT ["dotnet", "./app/Todo.Api.dll"]

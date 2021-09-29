ARG TAG=5.0
FROM mcr.microsoft.com/dotnet/sdk:$TAG AS build
WORKDIR /app
COPY . .
RUN dotnet restore && dotnet publish -c release -o published

FROM mcr.microsoft.com/dotnet/aspnet:$TAG AS runtime
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "published/ConversaoPeso.Web.dll"]
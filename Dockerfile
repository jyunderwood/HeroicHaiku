FROM microsoft/aspnetcore:1.1.0

RUN adduser --disabled-password deployuser
USER deployuser

WORKDIR /app
COPY . .

CMD ASPNETCORE_URLS=http://*:$PORT dotnet HeroicHaiku.dll

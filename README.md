# ASP.NET Core MVC on Heroku

A barebones demo showing that an ASP.NET Core MVC app can run easily on Heroku via Docker.

Developed on a Mac with the .NET Core SDK v1.1. Please note, there is no IIS integration so this might not actually run in Visual Studio on Windows. Funny, isn't it?

## Requirements

- [.NET Core SDK v1.1](https://www.microsoft.com/net/download/core#/current)
- [Heroku Toolbelt](https://toolbelt.heroku.com/) (to authenticate with the Docker registry hosted by Heroku)
- [Docker Toolbox](https://docker.com/toolbox) (to build the images and push to a registry)

## Up and Running

```sh
git clone git@github.com:jyunderwood/HeroicHaiku.git
cd HeroicHaiku

heroku create name-of-your-application
docker login --username=_ --password=$(heroku auth:token) registry.heroku.com

dotnet publish
docker build bin/Debug/netcoreapp1.1/publish -t name-of-your-application

docker tag name-of-your-application registry.heroku.com/name-of-your-application/web
docker push registry.heroku.com/name-of-your-application/web
```

Your first push will take some time, but subsequent pushes will only update the latest layer.

## More help

More information about this project has been [posted on my blog](https://jyunderwood.com/2016/12/hosting-asp-net-core-applications-heroku-docker/)

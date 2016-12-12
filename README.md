# ASP.NET Core MVC on Heroku

A barebones demo showing that an ASP.NET Core MVC app can run easily on Heroku via Docker.

Developed on a Mac with the .NET Core SDK v1.1. Please note, there is no IIS integration so this might not actually run in Visual Studio on Windows. Funny, isn't it?

# Requirements

- [.NET Core SDK v1.1](https://www.microsoft.com/net/download/core#/current)
- [Heroku Toolbelt](https://toolbelt.heroku.com/) (to authenticate with the Docker registry hosted by Heroku)
- [Docker Toolbox](https://docker.com/toolbox) (to build the images and push to a registry)

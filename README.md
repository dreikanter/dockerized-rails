# Sample Docker configuration for Rails project

## Docker configuration

Install Docker on OS X:

    brew tap caskroom/cask
    brew cask install docker-toolbox

Check if docker machine exists:

    docker-machine ls

Create a new machine if it isn't there:

    docker-machine create --driver virtualbox default

Besides VirtualBox, there are Docker Machine drivers for AWS, DigitalOcean and Scaleway.

Configure the shell by adding this to `~./bashrc`, or `~/.zshrc`, or `~/.config/fish/fish.conf`:

    eval $(docker-machine env default)

Remove `$` if using fish.

## Project specific actions

Build:

    docker-compose build
    docker-compose run app rails db:create db:setup

Get Docker machine IP:

    docker-machine ip default

Build and start all containers:

    docker-compose up

Control specific container:

    docker-compose start/stop/restart [container name]

List containers:

    docker-compose ps

Open Rails console:

    docker-compose run app rails console

## Apt Packages

- For postgres:

    - build-essential
    - libpq-dev
    - postgresql-client

- For nokogiri:

    - libxml2-dev
    - libxslt1-dev

- For a JS runtime:

    - nodejs

- For capybara-webkit:

  - libqt4-webkit
  - libqt4-dev xvfb

## Misc

(via [nickjanetakis.com](http://nickjanetakis.com/blog/dockerize-a-rails-5-postgres-redis-sidekiq-action-cable-app-with-docker-compose))

Remove dangling Docker images:

    docker rmi -f $(docker images -qf dangling=true)

Remove dangling Docker volumes:

    docker volume rm $(docker volume ls -qf dangling=true)

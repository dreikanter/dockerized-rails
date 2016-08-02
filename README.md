README

Build:

    docker-compose build
    docker-compose run app rails db:create db:setup

Get Docker machine IP (Rails will run on port 3000):

    docker-machine ip default

Run the whole thing:

    docker-compose up

Rails console:

    docker-compose run app rails console

Packages:

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

# Phoenix JSON API Example
Simple JSON API example for [json-api-normalizer](https://github.com/yury-dymov/json-api-normalizer) show case. Mentioned in [HabraHabr article](http://habr.ru ToDo)

This application is available on Heroku — https://phoenix-json-api-example.herokuapp.com/api/test

# Endpoints
The only supported endpoint so far is `/test`, which returns bunch of test data.

# Data Objects
![Phoenix JSON API Example Data Object Diagram](https://github.com/yury-dymov/phoenix-json-api-example/raw/master/docs/diagram.png)

# Installation

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Seed the test data with `mix run priv/repo/seeds.exs`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

# Heroku Deployment

This project is heroku deployment ready:

* Fork this repo and setup integration with heroku
* Setup elixir buildpack for heroku with `heroku buildpacks:set https://github.com/HashNuke/heroku-buildpack-elixir`
* Create PostgreSQL database with `heroku addons:create heroku-postgresql:hobby-dev`
* Update PostgreSQL database pool size with `heroku config:set POOL_SIZE=18`
* Set the secret key value with `heroku config:set SECRET_KEY_BASE="xvafzY4y01jYuzLm3ecJqo008dVnU3CN4f+MamNd1Zue4pXvfvUjbiXT8akaIF53"`
* Run the database migrations with `heroku run "POOL_SIZE=2 mix ecto.migrate"`
* Finally, seed the test data with `heroku run "POOL_SIZE=2 mix run priv/repo/seeds.exs"`

Now you can visit [`https://__YOUR__APP__/api/test`](https://__YOUR__APP__/api/test) from your browser.

# License
MIT (c) Yury Dymov

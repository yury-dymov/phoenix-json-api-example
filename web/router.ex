defmodule PhoenixJsonApiExample.Router do
  use PhoenixJsonApiExample.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
    plug JaSerializer.Deserializer
  end

  scope "/api", PhoenixJsonApiExample do
    pipe_through :api

    get "/test", TestController, :index
  end
end

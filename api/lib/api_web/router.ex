defmodule ApiWeb.Router do
  use ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: Api.Schema.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: Api.Schema.Schema,
      interface: :simple
  end
end

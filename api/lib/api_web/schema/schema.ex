defmodule Api.Schema.Schema do
  use Absinthe.Schema

  query do
    @desc "Get all the todos"
    field :todos, list_of(:todo) do
      resolve &ApiWeb.Resolvers.Todos.todos/3
    end
  end

  object :todo do
    field :id, non_null(:id)
    field :description, non_null(:string)
    field :checked, non_null(:boolean)
    field :attachment
  end
end


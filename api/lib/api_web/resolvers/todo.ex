defmodule ApiWeb.Resolvers.Todos do
  alias Api.Todos

  def todos(_,_,_) do
    {:ok, Todos.list_todos()}
  end
end


defmodule Api.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :attachment, :string
    field :checked, :boolean, default: false
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:id, :description, :checked, :attachment])
    |> validate_required([:id, :description, :checked, :attachment])
  end
end

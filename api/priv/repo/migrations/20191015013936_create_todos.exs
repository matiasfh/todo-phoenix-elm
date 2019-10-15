defmodule Api.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :description, :string
      add :checked, :boolean, default: false, null: false
      add :attachment, :string

      timestamps()
    end

  end
end

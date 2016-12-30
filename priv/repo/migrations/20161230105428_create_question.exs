defmodule PhoenixJsonApiExample.Repo.Migrations.CreateQuestion do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :text, :string

      timestamps()
    end

  end
end

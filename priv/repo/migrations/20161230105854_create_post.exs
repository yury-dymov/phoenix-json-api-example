defmodule PhoenixJsonApiExample.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :text, :string
      add :question_id, references(:questions, on_delete: :delete_all)
      add :author_id, references(:users, on_delete: :delete_all)

      timestamps()
    end
    create index(:posts, [:question_id])
    create index(:posts, [:author_id])

  end
end

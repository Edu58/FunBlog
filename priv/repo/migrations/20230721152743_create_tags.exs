defmodule Funblog.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :title, :string
      add :post, references(:posts, on_delete: :nothing)

      timestamps()
    end

    create index(:tags, [:post])
  end
end

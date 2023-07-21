defmodule Funblog.Repo.Migrations.AlterAddTagsToPost do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add(:tags, references(:tags, on_delete: :nothing))
    end

    create(index(:posts, [:tags]))
  end
end

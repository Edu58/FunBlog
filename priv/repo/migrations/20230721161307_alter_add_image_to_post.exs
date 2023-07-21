defmodule Funblog.Repo.Migrations.AlterAddImageToPost do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add(:image, :string)
    end
  end
end

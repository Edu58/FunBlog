defmodule Funblog.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  alias Funblog.Posts.Post
  alias Funblog.Accounts.User

  schema "comments" do
    field(:content, :string)
    belongs_to(:posts, Post)
    belongs_to(:user, User)

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:content, :posts, :user])
    |> validate_required([:content])
  end
end

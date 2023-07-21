defmodule Funblog.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias Funblog.Accounts.User
  alias Funblog.Tags.Tag

  schema "posts" do
    field(:image, :string)
    field(:content, :string)
    field(:title, :string)
    belongs_to(:user, User)
    has_many(:tags, Tag)

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :user, :tags])
    |> validate_required([:title, :content])
  end
end

defmodule Funblog.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Funblog.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        title: "some title"
      })
      |> Funblog.Posts.create_post()

    post
  end
end

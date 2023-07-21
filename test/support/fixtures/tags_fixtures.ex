defmodule Funblog.TagsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Funblog.Tags` context.
  """

  @doc """
  Generate a tag.
  """
  def tag_fixture(attrs \\ %{}) do
    {:ok, tag} =
      attrs
      |> Enum.into(%{
        title: "some title"
      })
      |> Funblog.Tags.create_tag()

    tag
  end
end

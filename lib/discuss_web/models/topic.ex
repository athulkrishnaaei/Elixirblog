defmodule Discuss.Topic do
 import Ecto.Query
 use DiscussWeb, :model
 alias DiscussWeb.Comment

  schema "topics" do
    field :title, :string
    belongs_to :user, DiscussWeb.User
    has_many :comments, Comment
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end

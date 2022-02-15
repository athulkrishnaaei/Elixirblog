defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller
  alias Dicuss.Topic

  def index(conn, _params) do

    changeset = Topic.changeset(%Topic{}, %{})
    render(conn, "new.html")
  end
end

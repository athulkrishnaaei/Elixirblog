 defmodule DiscussWeb.PageController do
  use DiscussWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  # def ne(conn, _params) do
  # render(conn, "new.html")
  # end
end

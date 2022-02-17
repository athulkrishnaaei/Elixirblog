defmodule DisussWeb.Plugs.SetUser do
  use DiscussWeb, :controller
  import Plug.Conn
  import Phoenix.Controller

  alias DiscussWeb.User





  def init(_params) do

  end

  def call(conn, _params) do
    user_id =get_session(conn, :user_id)

    cond do
      user = user_id && Discuss.Repo.get(User, user_id) ->
        assign(conn, :user, user)
      true ->
        assign(conn, :user, nil)
    end
  end
end

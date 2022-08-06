defmodule NicegassWeb.UserController do
  use NicegassWeb, :controller

  def index(conn, _params) do
    users = Nicegass.Repo.all(Nicegass.User)
    render(conn, "index.html", users: users)
  end
end

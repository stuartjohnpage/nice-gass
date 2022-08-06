defmodule NiceGasWeb.UserController do
  use NiceGasWeb, :controller

  def index(conn, _params) do
    users = NiceGas.Repo.all(NiceGas.User)
    render(conn, "index.html", users: users)
  end
end

defmodule NicegassWeb.NicegassController do
  use NicegassWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule NiceGasWeb.PageController do
  use NiceGasWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

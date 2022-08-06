defmodule NicegassWeb.UserView do
  use NicegassWeb, :view
  alias Nicegass.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end

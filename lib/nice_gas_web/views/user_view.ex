defmodule NiceGasWeb.UserView do
  use NiceGasWeb, :view
  alias NiceGas.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end

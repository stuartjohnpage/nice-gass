defmodule Nicegass.Repo do
  @moduledoc """
  In memory repository.
  """
  def all(Nicegass.User) do
    [
      %Nicegass.User{id: "1", name: "Stuart Page", username: "stupage", password: "nicegass"},
      %Nicegass.User{id: "2", name: "Kat Page", username: "katpage", password: "nicegass"}
    ]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find(all(module), fn map -> map.id == id end)
  end

  def get_by(module, params) do
    Enum.find(all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end

#   use Ecto.Repo,
#     otp_app: :nice_gass,
#     adapter: Ecto.Adapters.Postgres
# end

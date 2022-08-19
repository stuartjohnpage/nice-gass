defmodule Nicegass.User do
  use Ecto.Schema
  import Ecto.Changeset
    schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    timestamps
  end
end

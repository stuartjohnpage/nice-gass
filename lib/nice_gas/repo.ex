defmodule NiceGas.Repo do
  use Ecto.Repo,
    otp_app: :nice_gas,
    adapter: Ecto.Adapters.Postgres
end

defmodule Bom.Repo do
  use Ecto.Repo,
    otp_app: :bom,
    adapter: Ecto.Adapters.Postgres
end

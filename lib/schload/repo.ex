defmodule Schload.Repo do
  use Ecto.Repo,
    otp_app: :schload,
    adapter: Ecto.Adapters.Postgres
end

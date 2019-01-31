defmodule Secure.Repo do
  use Ecto.Repo,
    otp_app: :secure,
    adapter: Ecto.Adapters.Postgres
end

defmodule Funblog.Repo do
  use Ecto.Repo,
    otp_app: :funblog,
    adapter: Ecto.Adapters.Postgres
end

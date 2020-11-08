defmodule HomeBar.Repo do
  use Ecto.Repo,
    otp_app: :home_bar,
    adapter: Ecto.Adapters.Postgres
end

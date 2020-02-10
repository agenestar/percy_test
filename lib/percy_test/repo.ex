defmodule PercyTest.Repo do
  use Ecto.Repo,
    otp_app: :percy_test,
    adapter: Ecto.Adapters.Postgres
end

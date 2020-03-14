defmodule UploadVgs.Repo do
  use Ecto.Repo,
    otp_app: :upload_vgs,
    adapter: Ecto.Adapters.Postgres
end

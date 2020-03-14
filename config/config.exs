use Mix.Config

config :upload_vgs, UploadVgs.Repo,
  database: "video_games",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :upload_vgs, ecto_repos: [UploadVgs.Repo]

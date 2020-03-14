defmodule UploadVgs.Repo.Migrations.CreateVideogameRcds do
  use Ecto.Migration

  def change do
    create table(:sales) do
      add :game, :string, null: false
      add :platform, :string
      add :year_of_release, :string
      add :genre, :string
      add :publisher, :string
      add :na_sales, :string
      add :eu_sales, :string
      add :jp_sales, :string
      add :other_sales, :string
      add :global_sales, :string
      add :critic_score, :string
      add :critic_count, :string
      add :user_score, :string
      add :user_count, :string
      add :developer, :string
      add :rating, :string
    end

  end
end

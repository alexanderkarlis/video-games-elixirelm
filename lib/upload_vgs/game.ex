defmodule UploadVgs.Game do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sales" do
    field :game, :string
    field :platform, :string
    field :year_of_release, :string
    field :genre, :string
    field :publisher, :string
    field :na_sales, :string
    field :eu_sales, :string
    field :jp_sales, :string
    field :other_sales, :string
    field :global_sales, :string
    field :critic_score, :string
    field :critic_count, :string
    field :user_score, :string
    field :user_count, :string
    field :developer, :string
    field :rating, :string
  end

  def changeset(game, params \\ %{}) do
    game
    |> cast(params, [:game, :platform, :year_of_release, :genre, :publisher, :na_sales, :eu_sales, :jp_sales, :other_sales, :global_sales, :critic_score, :critic_count, :user_score, :user_count, :developer, :rating])
    |> validate_required([:game, :platform])
end
end

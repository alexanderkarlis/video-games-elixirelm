defmodule UploadVgs do
  alias UploadVgs.Game
  alias UploadVgs.Repo

  @moduledoc """
  Documentation for `UploadVgs`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> UploadVgs.hello()
      :world

  """
  def get_records(filepath) do
    File.stream!("#{File.cwd!}/#{filepath}")
      |> Stream.map(&(&1))
      |> CSV.decode!(headers: true)
      |> insert_data()
  end

  def insert_data(list) do
    a = Enum.map(list, fn x ->
      Repo.insert(Game.changeset(%Game{}, x))
    end)
    a
  end
end

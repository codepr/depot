defmodule Depot.Repo.Migrations.UpdateFilepaths do
  use Ecto.Migration

  def change do
    rename table("filepaths"), :original_path, to: :bucket_key_prefix
  end
end

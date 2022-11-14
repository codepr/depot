defmodule Depot.Repo.Migrations.CreateFilepaths do
  use Ecto.Migration

  def change do
    create table(:filepaths) do
      add :bucket_key_prefix, :string
      add :local_name, :string
      add :size, :integer
      add :last_access, :utc_datetime

      timestamps()
    end
  end
end

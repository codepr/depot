defmodule Depot.Repo.Migrations.CreateFilepaths do
  use Ecto.Migration

  def change do
    create table(:filepaths) do
      add :original_path, :string
      add :local_name, :string
      add :size, :integer
      add :last_access, :utc_datetime

      timestamps()
    end
  end
end

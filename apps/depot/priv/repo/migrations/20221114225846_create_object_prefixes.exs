defmodule Depot.Repo.Migrations.CreateObjectPrefixes do
  use Ecto.Migration

  def change do
    create table("object_prefixes") do
      add :name, :string
      add :child_of, :integer
    end
  end
end

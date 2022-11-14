defmodule Depot.ObjectPrefix do
  @moduledoc false
  use Ecto.Schema

  schema "object_prefix" do
    field :name, :string
    field :child_of, :integer
  end

  def changeset(filepath, params \\ %{}) do
    filepath
    |> Ecto.Changeset.cast(params, [:name, :child_of])
    |> Ecto.Changeset.validate_required([:name])
  end
end

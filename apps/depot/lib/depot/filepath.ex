defmodule Depot.Filepath do
  @moduledoc false
  use Ecto.Schema

  schema "filepath" do
    field :original_path, :string
    field :local_name, :string
    field :size, :integer
    field :last_access, :utc_datetime
  end

  def changeset(filepath, params \\ %{}) do
    filepath
    |> Ecto.Changeset.cast(params, [:original_path, :local_name, :size, :last_access])
    |> Ecto.Changeset.validate_required([:original_path, :local_name])
  end
end

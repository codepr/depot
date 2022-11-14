defmodule Depot.Filepath do
  @moduledoc false
  use Ecto.Schema

  schema "filepath" do
    field :bucket_key_prefix, :string
    field :local_name, :string
    field :size, :integer
    field :last_access, :utc_datetime
  end

  def changeset(filepath, params \\ %{}) do
    filepath
    |> Ecto.Changeset.cast(params, [:bucket_key_prefix, :local_name, :size, :last_access])
    |> Ecto.Changeset.validate_required([:bucket_key_prefix, :local_name])
  end
end

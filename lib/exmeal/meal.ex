defmodule Exmeal.Meal do
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:calories, :date, :description]

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "meals" do
    field :calories, :integer
    field :date, :date
    field :description, :string

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
  end
end

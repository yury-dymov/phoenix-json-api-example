defmodule PhoenixJsonApiExample.Question do
  use PhoenixJsonApiExample.Web, :model

  schema "questions" do
    field :text, :string

    has_many :posts, PhoenixJsonApiExample.Post
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text])
    |> validate_required([:text])
  end
end

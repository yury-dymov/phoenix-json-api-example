defmodule PhoenixJsonApiExample.Comment do
  use PhoenixJsonApiExample.Web, :model

  schema "comments" do
    field :text, :string
    belongs_to :post, PhoenixJsonApiExample.Post
    belongs_to :author, PhoenixJsonApiExample.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text, :post_id, :author_id])
    |> validate_required([:text, :post_id, :author_id])
  end
end

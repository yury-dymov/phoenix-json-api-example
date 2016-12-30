defmodule PhoenixJsonApiExample.Post do
  use PhoenixJsonApiExample.Web, :model

  schema "posts" do
    field :text, :string
    belongs_to :question, PhoenixJsonApiExample.Question
    belongs_to :author, PhoenixJsonApiExample.User

    has_many :comments, PhoenixJsonApiExample.Comment

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text, :question_id, :author_id])
    |> validate_required([:text, :question_id, :author_id])
  end
end

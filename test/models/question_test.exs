defmodule PhoenixJsonApiExample.QuestionTest do
  use PhoenixJsonApiExample.ModelCase

  alias PhoenixJsonApiExample.Question

  @valid_attrs %{text: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Question.changeset(%Question{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Question.changeset(%Question{}, @invalid_attrs)
    refute changeset.valid?
  end
end

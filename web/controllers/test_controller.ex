defmodule PhoenixJsonApiExample.TestController do
  use PhoenixJsonApiExample.Web, :controller

  def index(conn, _params) do
    query =
      from q in PhoenixJsonApiExample.Question,
      preload: [{:posts, [:author, [{:comments, [:author]}]]}]

    data = PhoenixJsonApiExample.Repo.all(query)

    json conn, JaSerializer.format(
      PhoenixJsonApiExample.QuestionSerializer,
      data
    )
  end
end

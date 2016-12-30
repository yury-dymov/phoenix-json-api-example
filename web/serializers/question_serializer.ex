defmodule PhoenixJsonApiExample.QuestionSerializer do
  use JaSerializer

  attributes [:id, :text]

  has_many :posts, serializer: PhoenixJsonApiExample.PostSerializer, include: true, field: :posts
end

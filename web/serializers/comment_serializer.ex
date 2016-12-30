defmodule PhoenixJsonApiExample.CommentSerializer do
  use JaSerializer

  attributes [:id, :text]

  has_one :author, serializer: PhoenixJsonApiExample.UserSerializer, include: true, field: :author
end

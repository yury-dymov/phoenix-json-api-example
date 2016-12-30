defmodule PhoenixJsonApiExample.PostSerializer do
  use JaSerializer

  attributes [:id, :text]

  has_many :comments, serializer: PhoenixJsonApiExample.CommentSerializer, include: true, field: :comments
  has_one :author, serializer: PhoenixJsonApiExample.UserSerializer, include: true, field: :author
end

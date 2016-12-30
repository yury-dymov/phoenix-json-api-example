q1 =
  %PhoenixJsonApiExample.Question{}
  |> PhoenixJsonApiExample.Question.changeset(%{ text: "How are you today?" })
  |> PhoenixJsonApiExample.Repo.insert!

q2 =
  %PhoenixJsonApiExample.Question{}
  |> PhoenixJsonApiExample.Question.changeset(%{ text: "What is your favorite color?" })
  |> PhoenixJsonApiExample.Repo.insert!

u1 =
  %PhoenixJsonApiExample.User{}
  |> PhoenixJsonApiExample.User.changeset(%{ name: "Alice" })
  |> PhoenixJsonApiExample.Repo.insert!

u2 =
  %PhoenixJsonApiExample.User{}
  |> PhoenixJsonApiExample.User.changeset(%{ name: "Bob" })
  |> PhoenixJsonApiExample.Repo.insert!

u3 =
  %PhoenixJsonApiExample.User{}
  |> PhoenixJsonApiExample.User.changeset(%{ name: "Jenny" })
  |> PhoenixJsonApiExample.Repo.insert!

p1 =
  %PhoenixJsonApiExample.Post{}
  |> PhoenixJsonApiExample.Post.changeset(%{ text: "I am fine", author_id: u1.id, question_id: q1.id })
  |> PhoenixJsonApiExample.Repo.insert!

p2 =
  %PhoenixJsonApiExample.Post{}
  |> PhoenixJsonApiExample.Post.changeset(%{ text: "I am sad :(", author_id: u2.id, question_id: q1.id })
  |> PhoenixJsonApiExample.Repo.insert!

%PhoenixJsonApiExample.Comment{}
|> PhoenixJsonApiExample.Comment.changeset(%{ text: "What happenned?", post_id: p2.id, author_id: u1.id })
|> PhoenixJsonApiExample.Repo.insert!

%PhoenixJsonApiExample.Comment{}
|> PhoenixJsonApiExample.Comment.changeset(%{ text: "C'mon bro! You'll be fine!", post_id: p2.id, author_id: u3.id })
|> PhoenixJsonApiExample.Repo.insert!

%PhoenixJsonApiExample.Post{}
|> PhoenixJsonApiExample.Post.changeset(%{ text: "Red", author_id: u1.id, question_id: q2.id })
|> PhoenixJsonApiExample.Repo.insert!

%PhoenixJsonApiExample.Post{}
|> PhoenixJsonApiExample.Post.changeset(%{ text: "Green", author_id: u2.id, question_id: q2.id })
|> PhoenixJsonApiExample.Repo.insert!

%PhoenixJsonApiExample.Post{}
|> PhoenixJsonApiExample.Post.changeset(%{ text: "Black", author_id: u3.id, question_id: q2.id })
|> PhoenixJsonApiExample.Repo.insert!

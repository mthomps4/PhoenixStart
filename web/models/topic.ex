defmodule Discuss.Topic do
  use Discuss.Web, :model
  # ^ Discuss.web :model created a struct with same lable above
  # struct = %Discuss.Topic{__meta__: #Ecto.Schema.Metadata<:built, "topics">, id: nil, title: nil}
  # params = %{title: "Great JS"}
  # Discuss.Topic.changeset(struct, params)
  # Save changeset --

  # changeset + form template = usable Form 

  schema "topics" do
    field :title, :string
  end

  # \\ %{} -- If params is nil Defaults to empty map
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end

end

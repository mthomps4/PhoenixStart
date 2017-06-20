defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  alias Discuss.Topic

  def new(conn, _params) do
    # changeset + form template = usable Form
    # struct = %Topic{}
    # params = %{}

    # Empty changeset
    changeset = Topic.changeset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset # Adds changeset as a var for template data
  end

  def create(conn, %{"topic" => topic }) do
    # params = csrf_token -> al;djkfkasjdf, "topic" => %{"title" => "value"}
    # %{"topic" is not an atom use pattern matching
    # %{"topic" => topic} = params

  end

end

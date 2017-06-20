mix ecto.gen.migration add_topics
mix ecto.migrate


Route to Router File
Method in a controller to handle request
Make a new Template with form
Take all info out of form 'Model'
controller & View to handle everything to 'Topics'

GET topics/new controller new
POST topics/ controller create
GET topics controller index
DELETE topics/12 controller delete
GET topics/12/edit controller edit
PUT topic/12 controller update

Module Math
defmodule Math do
 def add(a,b), do: a + b
end

import Take all functions out of A module and put into B module
defmodule TopicController do
  import Math

  def log(), do: IO.puts "hey"
end

TopicController.add(1,2)
> 3

---

alias Give me a shortcut to this module
defmodule Topic Controller do
  alias Math
  def log(), do: add(1,2)
end

TopicController.log(1,2)
> 3

TopicController.add(1,2)
> ERROR

---

use I want to do some really fancy setup



VALIDATION

two args
Struct - A hash that contains some data. Represents a record(or a record to save) in the db

Params - A hash that contains the props we want to update the struct with

struct & params --> cast

cast - produces a changeset
cast --> validators

validators - adds errors to changeset

changeset - Knows the data we're trying to save and wether or not there are validations issues.

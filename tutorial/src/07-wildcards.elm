-- Wild cards pattern matching
type User
  = Regular String Int
  | Visitor String

toName : User -> String
toName user =
  case user of
    Regular name _ ->
      name

    Visitor name ->
      name

-- the _ achknowledges the data there, but also
-- saying explicitly thawt nobody is using it.

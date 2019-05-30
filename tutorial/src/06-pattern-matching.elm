-- Pattern Matching

type User =
  = Regular String Int
  | Visitor


-- case of

toName : User -> String
toName user =
  case user of
    Regular name age ->
      name

    Visitor name ->
      name

-- toName (Regular "Maikel" 77) == "Maikel"
-- toName (Visitor "Max") == "Max"

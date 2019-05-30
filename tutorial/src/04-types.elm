-- Example of type inference
toFullName person = 
  person.firstName ++ " " ++ person.lastName

fullName =
  toFullName { firstName = "Maikel", lastName = "Chandika" }

-- enums
-- create enums with 2 values: Regular & visitor
type UserStatus = Regular | Visitor

type alias User = 
  { status : UserStatus,
    name : String
  }

thomas = { status = Regular, name = "Thanos" }

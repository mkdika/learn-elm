-- Example of type inference
toFullName person = 
  person.firstName ++ " " ++ person.lastName

fullName =
  toFullName { firstName = "Maikel", lastName = "Chandika" }

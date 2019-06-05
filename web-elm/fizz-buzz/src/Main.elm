module Main exposing (main)
import Html exposing (text)

fizzBuzz = "FizzBuzz"
fizz = "Fizz"
buzz = "Buzz"

fizzBuzzInput value =
  if modBy value 15 == 0 then
    fizzBuzz
  else if modBy value 3 == 0 then
    fizz
  else if modBy value 5 == 0 then
    buzz
  else (Debug.toString value)

main = 
  fizzBuzzInput 34567
  |> text

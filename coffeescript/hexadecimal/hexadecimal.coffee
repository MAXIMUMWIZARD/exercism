decimalValue =
  '0': 0
  '1': 1
  '2': 2
  '3': 3
  '4': 4
  '5': 5
  '6': 6
  '7': 7
  '8': 8
  '9': 9
  'a': 10
  'b': 11
  'c': 12
  'd': 13
  'e': 14
  'f': 15

class Hexadecimal
  constructor: (@string) ->

  toDecimal: ->
    unless /^(\d|[a-f])+$/.test(@string)
      return toDecimal = 0

    @string.split('').reduce( (total, char, i) =>
      placeValue = Math.pow(16, @string.length - i - 1)

      total + placeValue * decimalValue[char]
    , 0)

module.exports = Hexadecimal

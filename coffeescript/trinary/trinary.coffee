class Trinary
  constructor: (@string) ->

  toDecimal: ->
    unless /^[0-2]+$/.test(@string)
      return toDecimal = 0

    @string.split('').reduce( (total, char, i) =>
      placeValue = Math.pow(3, @string.length - i - 1)

      total + placeValue * char
    , 0)

module.exports = Trinary
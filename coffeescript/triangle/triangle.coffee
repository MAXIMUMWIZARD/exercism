class Triangle
  constructor: (a, b, c) ->
    @sides = [a, b, c].sort()

    if @sides[0] < 0
      throw 'negative sides are illegal'
    if @sides[0] + @sides[1] <= @sides[2]
      throw 'violation of triangle inequality'

  kind: ->
    if @sides[0] == @sides[2]
      'equilateral'
    else if @sides[0] == @sides[1] || @sides[1] == @sides[2]
      'isosceles'
    else
      'scalene'

module.exports = Triangle

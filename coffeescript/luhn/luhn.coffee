class Luhn
  @create: (number) ->
    checksum = new Luhn(number * 10).checksum
    checkDigit = (10 - checksum % 10) % 10

    number * 10 + checkDigit

  constructor: (number) ->
    @checkDigit = number % 10

    @addends = number
      .toString()
      .split('')
      .reverse()
      .map( (char) -> parseInt(char) )
      .map( (n, i) ->
        if i % 2
          if n > 4
            2 * n - 9
          else
            2 * n
        else
          n
      ).reverse()

    @checksum = @addends.reduce( (total, n) -> total + n)
    @valid = @checksum % 10 == 0

module.exports = Luhn

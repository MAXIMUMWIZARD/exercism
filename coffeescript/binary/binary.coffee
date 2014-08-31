class Binary
  constructor: (binaryString) ->
    # validate string
    return @value = 0 unless /^[01]+$/.test(binaryString)

    @value = binaryString.split('').reduce((memo, char, i) =>
      if char == '0'
        memo
      else
        memo + 2**(binaryString.length - i - 1)
    , 0)

  toDecimal: ->
    @value

module.exports = Binary
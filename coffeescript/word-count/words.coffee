class Words
  constructor: (string) ->
    @count = {}
    words = string.match(/\w+/g)

    for word in words
      @count[word.toLowerCase()] ?= 0
      @count[word.toLowerCase()] += 1

  count: ->
    @count

module.exports = Words
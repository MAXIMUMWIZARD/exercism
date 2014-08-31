class Anagram
  constructor: (@string) ->
    @sorted = string.toLowerCase().split('').sort()

  match: (words) =>
    words = words.map( (word) -> word.toLowerCase())

    words.filter( (word) =>
      sortedWord = word.split('').sort()

      word != @string &&
      word.length == @sorted.length &&
      sortedWord.every( (_, i) =>
          sortedWord[i] == @sorted[i]
        )
    )

module.exports = Anagram
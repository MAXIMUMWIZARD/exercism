class Bob
  hey: (statement) ->
    if statement.match(/^\s*$/)
      'Fine. Be that way!'
    else if statement == statement.toUpperCase() && statement != statement.toLowerCase()
      'Woah, chill out!'
    # you can shout with a question mark, so this must come after
    else if statement.slice(-1) == '?'
      'Sure.'
    else
      'Whatever.'

module.exports = Bob

class Bob
  hey: (statement) ->
	# the order of these matches matters
    if statement.match(/^\s*$/)
      'Fine. Be that way!'
    else if statement.match(/^[A-Z ]+[!?]?$/) || statement.match(/^[^a-z]+!$/)
      'Woah, chill out!'
    else if statement.slice(-1) == '?'
      'Sure.'
    else
      'Whatever.'

module.exports = Bob
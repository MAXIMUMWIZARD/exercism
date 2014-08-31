var Bob = function() {};
module.exports = Bob;

Bob.prototype.hey = function (statement) {
  if (statement.slice(-1) === '?') {
    return 'Sure.';
  } else if (statement.slice(-1) === '!' || statement.match(/\A[A-Z\s]\z/)) {
    return 'Woah, chill out!';
  } else if (statement.match(/\A\s*\z/)) {
    return 'Fine. Be that way!'
  }
  return 'Whatever.';
};
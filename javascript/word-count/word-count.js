var words = function(words) {
  count = {};

  words.split(/[\s\p{Punct}]/).forEach(function(word) {
    if (!word) return;
    word = word.toLowerCase();

    count[word] && ++count[word] || (count[word] = 1);
  });

  return count;
};

module.exports = words;

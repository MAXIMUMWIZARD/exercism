var words = function(words) {
  count = {};

  words.split(/\s/).forEach(function(word) {
    word = word.toLowerCase();
    word = word.replace(/[^\w\déпривет]/g, '');

    if (!word) return;
    count[word] && ++count[word] || (count[word] = 1);
  });

  return count;
};

module.exports = words;

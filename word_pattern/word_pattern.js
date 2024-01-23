const wordPattern = (pattern, s) => {
  let words = s.split(" ");
  if (words.length != pattern.length) {
    return false;
  }
  //used the new Map instead of Object - > Map can have a key of any type, not that that matters here
  // plain object inherits from Object.prototype which can have unexpected behavior
  // like certain key names like 'constructor' unless Object.create(null) is used to create a
  //"pure" object
  // many other considerations Map can be turned to JSON as easily
  // Map has nice built in methods like set, get, has, delete, forEach
  //Map is ideal for high perofmrance key/val mapping
  //Plain objects good for when working with JSON
  const char_to_word = new Map();
  const word_to_char = new Map();

  for (let i = 0; i < pattern.length; i++) {
    let word = words[i];
    let char = pattern[i];
    if (char_to_word.has(char) && char_to_word.get(char) != word) {
      return false;
    } else if (word_to_char.has(word) && word_to_char.get(word) != char) {
      return false;
    } else {
      char_to_word.set(char, word);
      word_to_char.set(word, char);
    }
  }

  return true;
};

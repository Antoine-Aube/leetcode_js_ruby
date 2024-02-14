const lengthOfLongestSubstring = (s) => {
  let start_i = 0;
  let longest_str = 0;
  const chars_map = {};

  for (let i = 0; i < s.length; i++) {
    if (chars_map[s[i]] !== undefined && chars_map[s[i]] >= start_i) {
      start_i = chars_map[s[i]] + 1;
    }

    chars_map[s[i]] = i;

    longest_str = Math.max(longest_str, i - start_i + 1);
  }
  return longest_str;
};
s = "abcabcbb";

console.log(s[0]);
console.log(lengthOfLongestSubstring(s));

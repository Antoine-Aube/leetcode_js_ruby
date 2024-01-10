const s = "rat"
const t = "tart"

var isAnagram = (s, t) => {
  if (s.length !== t.length) {
      return false
  }
  const s_obj = {}
  const t_obj = {}

  for (let i = 0; i < s.length; i++) {
      if (!s_obj[s[i]]) {
        s_obj[s[i]] = 1;  
      } else {
        s_obj[s[i]]++;
      };
  }
//   for (i = 0; i < t.length; i++) {
//     if (!t_obj[t[i]]) {
//       t_obj[t[i]] = 1  
//     } else {
//       t_obj[t[i]]++
//     }
// }
for (let i = 0; i < t.length; i ++) {
  if (s_obj[t[i]]){
    s_obj[t[i]]--;
  } else {
    return false
  }
}

if (Object.values(s_obj).every((v) => v === 0)){
  return true
}
  
};

console.log(isAnagram(s, t))
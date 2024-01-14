

let isSubsequence = (s,t) => {
  if(s.length > t.length){
    return false;
  }

  let s_index = 0
  let t_index = 0 

  while (s_index < s.length && t_index < t.length) {
    if (s[s_index] === t[t_index]){
      s_index ++;
    }
    t_index++;
  }
  return s_index === s.length;
};

let s = "sing"
let t = "string"

let a = "fly"
let b = "flow"

console.log(isSubsequence(s, t));
console.log(isSubsequence(a, b));

// const string = "string"

// console.log(string.indexOf("s", 2))
// console.log(string[string.length-1])

const grades = [{grade: 10}, {grade: 15}, {grade: 5}];
console.log(grades.reduce((total, current) => {
  console.log(current);
  return total + current.grade // visualize that this is an object
}, 0));
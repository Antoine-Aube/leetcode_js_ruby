const isValid = (s) => {
  const pairs = {
    ")": "(",
    "}": "{",
    "]": "[",
  };

  const stack = [];

  for (let i = 0; i < s.length; i++) {
    //This is really slow because Object.values create a new array
    //each time...
    //You can also use new Set for the opening brackets to
    //directly check that set for those elements,
    //rather than relying on the hash
    // Can also just check if it exists with
    // if (pairs[s[i]])
    if (Object.values(pairs).includes(s[i])) {
      stack.push(s[i]);
      console.log(stack);
    } else if (pairs[s[i]] === stack[stack.length - 1]) {
      stack.pop();
    } else {
      return false;
    }
  }
  return stack.length === 0;
};

let string = "[()]";
let string_1 = "[()]}";

console.log(isValid(string));
console.log(isValid(string_1));

const people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
];
//cool way to visualize!
console.table(people);

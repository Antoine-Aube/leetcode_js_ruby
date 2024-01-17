let canConstruct = (ransomNote, magazine) => {
  //check to see if ransom_note length is greater than magazine => false if so
  if (ransomNote.length > magazine.length){
      return false;
  };
  //create an object based on the characters in ransom_note
  const noteObj = {};

  for (let i = 0; i < ransomNote.length; i++){
      if (noteObj[ransomNote[i]]){
          noteObj[ransomNote[i]]++;
      } else {
          noteObj[ransomNote[i]] = 1;
      }
  }

  for (let i = 0; i < magazine.length; i++){
      if (noteObj[magazine[i]]){
          noteObj[magazine[i]]--;
      };
  };

  if (Object.values(noteObj).every(k => k <= 0)){
      return true;
  } else {
      return false;
  }
};

const ransomeNote = "Givemethemoney"
const magazine = "GGiivvemeetheemoneeyy"
console.log(canConstruct(ransomeNote, magazine))

let int = 0

console.log(int -1)
console.log(2)
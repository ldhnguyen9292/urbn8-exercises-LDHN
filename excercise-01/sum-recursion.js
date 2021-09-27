const initArray = [5, 9, 6, 8, 4, 6];
// const initArray = 5 || "satre" || null || undefined || {} || [];
// const initArray = ["5", 9, 6, "8", 4, "6"];
// const initArray = [9007199254740991, 9007199254740991];

let sum = (index, total) => {
  if (index < initArray.length - 1) {
    total += Number(initArray[index]);
    return sum(index + 1, total);
  } else return (total += Number(initArray[index]));
};

if (!Array.isArray(initArray) || initArray.length === 0)
  console.log("Please insert array of numbers. Ex: [5, 9, 6, 8, 4, 6]");
else {
  const result = sum(0, 0);
  console.log("Sum of array: ", result);
}

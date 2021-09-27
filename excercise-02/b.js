const api = function (result) {
  return new Promise((resolve, reject) => {
    if (!result) reject(new Error("Result not found"));
    resolve(result);
  });
};
const api2 = function (result2) {
  return new Promise((resolve, reject) => {
    if (!result2) reject(new Error("Result not found"));
    resolve(result2);
  });
};
const api3 = function (result3) {
  return new Promise((resolve, reject) => {
    if (!result3) reject(new Error("Result not found"));
    resolve(result3);
  });
};

api(1)
  .then((result) => {
    console.log("result: ", result);
    return api2(2);
  })
  .then((result) => {
    console.log("result2: ", result);
    return api3(3);
  })
  .then((result) => console.log("result3: ", result))
  .catch(console.log);

const api = function (result) {
  console.log("result: ", result);
  const api2 = function (result2) {
    console.log("result2: ", result2);
    const api3 = function (result3) {
      console.log("result3: ", result3);
    };
    api3(3);
  };
  api2(2);
};
api(1);

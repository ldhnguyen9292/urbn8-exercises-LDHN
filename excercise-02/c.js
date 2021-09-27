const api = function (result) {
  console.log("result: ", result);
};
const api2 = function (result2) {
  console.log("result2: ", result2);
};
const api3 = function (result3) {
  console.log("result3: ", result3);
};

const main = async () => {
  try {
    await api(1);
    await api2(2);
    await api3(3);
  } catch (error) {
    console.log(error);
  }
};

main();

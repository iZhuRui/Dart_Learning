int sum(int num1, int num2) {
  return num1 + num2;
}

int mul(int num1, int num2) {
  return num1 * num2;
}

int min(int num1, int num2){
  return num1 > num2 ? num2 : num1;
}
// _是区分私有和公共的一种方式
// int _min(int num1, int num2){
//   return num1 > num2 ? num2 : num1;
// }
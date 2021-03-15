main(List<String> args) {
  // test1((abc) {
  //   print('abc');
  // });

  test2((num1, num2){
    return num1 + num2;
  });

  test3((num1, num2){
    return num1 + num2;
  });

  var demo1 = demo();
  print(demo1(30, 40));
}

//  封装test1函数，要求：传入一个函数
void test1(Function foo){
  foo('why');
}

//  int foo(int num1, int num2)相当于函数签名
void test2(int foo(int num1, int num2)){
  foo(20, 30);
}

//  test2函数可读性不高，可改成一下写法
typedef Calculate = int Function(int num1, int num2);

void test3(Calculate cal){
  print(cal(20, 40));
}

Calculate demo(){
  return (num1, num2){
    return num1 * num2;
  };
}
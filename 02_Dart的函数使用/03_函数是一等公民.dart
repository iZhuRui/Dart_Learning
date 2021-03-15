//  面向对象的语言中：类（对象）是第一公民（对象作为参数、返回值）
main(List<String> args) {
  //  1.直接找到另一个定义的函数传进去
  // test(bar);

  //  匿名函数(一般用来做参数传递，不用特意再写一个函数)
  //  (参数列表){函数体}
  test(() {
    print('匿名函数被调用');
  });

  // test(() {
  //   print('匿名函数被调用');
  //   return 10;
  // });

  //  3.箭头函数：条件（函数体只有一行代码）
  test(() => print('箭头函数被调用'));
  test(() => {
    // print('箭头函数再被调用');不能出现分号，函数体只能有一行
    print('箭头函数再被调用')
  });

}

//  函数可以作为另一个函数的参数
void test(Function foo){
  var result = foo();
  // print("result is $result");
}

void bar(){
  print('bar函数被调用');
}
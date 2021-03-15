main(List<String> args) {
  sayHello1('why');

  sayHello2('why', 18, 1.88);

  sayHello3("why", age: 18, height: 1.99);
}

//  必选参数：必须传
void sayHello1(String name) {
  print(name);
}

//  不能两个函数名不能一样，dart中没有重载(方法名一样，参数不一样)
//  可选参数：位置可选参数 - 命名可选参数
//  注意：只有可选参数才有默认值，必选参数不能有默认值
//  位置可选参数：[int age, double height]
//  实参合形参在进行匹配是，是根据位置的匹配
void sayHello2(String name, [int age = 10, double height = 2]) {

}

//  命名可选参数(开发中见得最多)
void sayHello3(String name, {int age =33, double height}) {

}
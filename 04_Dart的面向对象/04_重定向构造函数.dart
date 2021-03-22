
main(List<String> args) {
  var p = Person('jack');

  print(p.age);
}

class Person {
  String name;
  int age;

  //  给age一个初始化值
  // Person(this.name) : age = 90;

  //  构造函数的重定向
  //  给age一个初始化值；可以调用另一个函数
  Person(String name): this._internal(name, 70);
  //  相当于上面的构造函数调用下面的构造函数，相互之间的调用
  Person._internal(this.name, this.age);
}
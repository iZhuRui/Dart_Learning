main(List<String> args) {
  
}

class Animal {
  int age;

  Animal(this.age);
}

// extends 继承自
class Person extends Animal {
  String name;

  // 初始化列表中调用super
  Person(this.name, int age):super(age);
}
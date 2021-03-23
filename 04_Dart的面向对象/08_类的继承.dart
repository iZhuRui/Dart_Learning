main(List<String> args) {
  var p = Person('rose', 18);
  // p.name = 'jack';
  p.run();
  print(p.toString());
  
}

/*
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
*/

class Animal {
  int age;

  Animal(this.age);

  run(){
    print('running');
  }
}

// 子类可以拥有自己的成员变量，并且可以对父类的方法进行重写
// 子类中可以调用父类的构造方法，对某些属性进行初始化：
  // 1.子类的构造方法在执行前，将隐式调用父类的无参默认构造方法（没有参数且与类同名的构造函数）
  // 2.如果父类没有无参默认构造方法，则子类的构造方法必须在初始化列表中通过super显式调用父类的某个构造方法
class Person extends Animal {
  String name;

  Person(String name, int age) : name = name, super(age);

  @override
  run() {
    // TODO: implement run
    print('$name is running');
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'name = $name, age = $age';
  }
}
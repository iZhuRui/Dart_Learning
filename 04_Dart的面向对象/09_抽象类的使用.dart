main(List<String> args) {
  final s = Shape();

  // external关键字的作用：将方法的声明和方法的实现分离;一般情况下方法的声明和方法的实现是放在一起的；
  // 使用external声明方法，方法的实现用@patch（补丁）注解，在其他地方对某个类里的方法进行具体的实现；好处：针对不同的平台，进行不同的实现
  // Map也是个抽象函数，却可以实例化，是因为内部有工厂构造函数 external factory Map();
  // 普通抽象函数，不能通过默认构造函数进行实例化，可以通过工厂构造函数实现
  final map = Map();
  print(map.runtimeType);
}

// 注意二：抽象类不能实例化
// 抽象类
// 抽象类可以放一些函数，而且函数是可以没有实现的；只有方法声明，没有方法实现；普通类不行
abstract class Shape {
  int getArea();
  String getInfo() {
    return "现状";
  }

  factory Shape() {
    // return Shape();// 这种情况相当于递归了
    // return Rectangle();// 实例化一个子类
    return null;
  }
}

// class Person {
//   void run();// 普通类里所有的方法必须要有实现体
// }

// 注意一：继承自抽象类后，必须实现抽象类的抽象方法
// class Rectangle extends Shape {
//   @override 
//   int getArea() {
//     return 100;
//   }
// }
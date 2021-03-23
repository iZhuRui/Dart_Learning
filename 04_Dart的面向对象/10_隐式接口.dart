main(List<String> args) {
  var p = Superman();
  p.running();
  p.eating();
  p.flying();
}

// Dart中没有哪一个关键字是用来定义接口的
// 默认情况下，所有的类都是隐式接口
// Dart只支持单继承
// 当将一个类当做接口使用时，那么实现这个接口的类，必须实现这个接口中所有的方法
class Runner {
  void running(){

  }
}

class Flyer {
  void flying(){

  }
}

class Animal {
  void eating(){
    print('animal is eating');
  }

  void running(){
    print('animal is running');
  }
}

class Superman extends Animal implements Runner, Flyer {

  @override
  void eating() {
    // TODO: implement eating
    super.eating();
  }
  // 如果父类和其他接口类中有重名的函数，会出现二义性
  @override
  void running() {
    // TODO: implement running
    super.running();
  }

  // @override
  // void running() {
  //   print('run');
  // }

  @override
  void flying() {
    print('fly');
  }

}
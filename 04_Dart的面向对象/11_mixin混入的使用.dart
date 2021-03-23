main(List<String> args) {
  var p = Superman();
  p.running();// 此处优先级：Superman本身 > 混入 > 继承
  p.flying();
}

mixin Runner {
  void running(){
    print('runner is running');
  }
}

mixin Flyer {
  void flying(){
    print('flyer is flying');
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

// 混入的语法：
  // 1.定义可混入的类时，不能用class，mixin
  // 2.with进行混入
class Superman extends Animal with Runner, Flyer {

  @override
  void eating() {
    // TODO: implement eating
    super.eating();
  }
  // 如果父类和其他接口类中有重名的函数，会出现二义性
  // @override
  // void running() {
  //   // TODO: implement running
  //   super.running();
  // }

  // @override
  // void running() {
  //   print('run');
  // }

  // @override
  // void flying() {
  //   print('fly');
  // }

}
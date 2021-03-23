// 枚举：enum
main(List<String> args) {
  final color = Colors.red;

  switch (color) {
    case Colors.red:
      print('红色');
      break;

    case Colors.blue:
      print('蓝色');
      break;

      case Colors.green:
      print('绿色');
      break; 
    default:
  }

  print(Colors.values);
  print(Colors.red.index);
}

// 值固定，较安全，可读性强
enum Colors{
  red,
  blue,
  green
}
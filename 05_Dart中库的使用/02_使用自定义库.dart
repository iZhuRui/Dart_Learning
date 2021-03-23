/**
 * 1.补充一:当库中方法名有冲突时，as关键字给库起别名
 * 2.补充二:默认情况下，导入一个库时，会导入这个库中所有的内容
 *    *  show:执行要导入的内容
 *    *  hide:隐藏某个要导入的内容，导入其他内容
 * 3.公共的dart文件的抽取：export
 */
// import 'utils/math_utils.dart' as mUtils;
// import 'utils/math_utils.dart' show sum, mul;
// import 'utils/math_utils.dart' hide mul;
// import 'utils/date_utils.dart';

import 'utils/utils.dart' show sum, dateFormat, mul;

main(List<String> args) {
  // print(sum(20, 30));
  // print(mUtils.sum(20, 40));
  // print(mUtils.mul(20, 30));

  print(sum(20, 40));
  print(mul(20, 30));

  print(dateFormat());


}

// void sum(num1, num2) {
//   print(num1 + num2);
// }
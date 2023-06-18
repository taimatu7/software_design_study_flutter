import 'package:software_design_study_flutter/fizz_buzz/number_converter.dart';
import 'package:software_design_study_flutter/fizz_buzz/rules/cyclic_number_rule.dart';
import 'package:software_design_study_flutter/fizz_buzz/rules/pass_through_rule.dart';

// 開放閉鎖の原則
class FizzBuzz {
  // 最終的に何も文字がない場合は、PassThroughRuleでそのまま数値を文字列に変換する
  // 動作の本質に対して仕様(ルール)を設定するようにし、拡張できるようにする
  final fizzBuzz = NumberConverter([
    CyclicNumberRule(3, 'Fizz'),
    CyclicNumberRule(5, 'Buzz'),
    PassThroughRule(),
  ]);

  void runFizzBuzz() {
    print(fizzBuzz.convert(1));
    print(fizzBuzz.convert(3));
    print(fizzBuzz.convert(5));
    print(fizzBuzz.convert(15));
  }
}

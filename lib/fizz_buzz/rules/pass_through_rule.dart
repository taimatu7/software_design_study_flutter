import 'package:software_design_study_flutter/fizz_buzz/replace_rule_interface.dart';

class PassThroughRule implements ReplaceRuleInterface {
  @override
  bool match(String carry, int number) {
    return carry.isEmpty;
  }

  // 最終的にどのルールともマッチしない場合は、そのまま数値を文字列に変換する
  @override
  String apply(String carry, int number) {
    return number.toString();
  }
}

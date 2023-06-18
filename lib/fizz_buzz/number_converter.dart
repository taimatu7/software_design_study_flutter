import 'package:software_design_study_flutter/fizz_buzz/replace_rule_interface.dart';

// 動作の本質を表すクラス
class NumberConverter {
  // メモ：dartはprivateでもサブクラスからアクセスできる
  final List<ReplaceRuleInterface> _rules;
  NumberConverter(this._rules);

  String convert(int number) {
    var carry = '';
    for (var rule in _rules) {
      if (rule.match(carry, number)) {
        carry = rule.apply(carry, number);
      }
    }
    return carry;
  }
}

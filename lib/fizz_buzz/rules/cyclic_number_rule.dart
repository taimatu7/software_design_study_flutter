import 'package:software_design_study_flutter/fizz_buzz/replace_rule_interface.dart';

// 倍数の場合に置換するルール
class CyclicNumberRule implements ReplaceRuleInterface {
  // 対象の倍数
  final int _baseNumber;
  final String _replacementWord;
  CyclicNumberRule(this._baseNumber, this._replacementWord);

  @override
  bool match(String carry, int number) {
    return number % _baseNumber == 0;
  }

  @override
  String apply(String carry, int number) {
    return carry + _replacementWord;
  }
}

// これを実装するクラスが動作の仕様を表す
abstract class ReplaceRuleInterface {
  bool match(String carry, int number);
  String apply(String carry, int number);
}

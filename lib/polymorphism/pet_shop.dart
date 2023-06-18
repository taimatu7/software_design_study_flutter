// LoggerInterfaceに依存するようにすることで、具象クラスに依存しないようにする
class PetShop {
  final LoggerInterface _logger;
  PetShop(
    this._logger,
  );

  void sell() {
    // _loggerの実装によって、ログ出力の有無を切り替える
    // 呼び出し側は、ログ出力の有無を意識する必要がない
    _logger.log("sell");
  }
}

// ロガーのインターフェース
abstract class LoggerInterface {
  void log(String message);
}

// 何も出力しないロガー
// 条件分岐ではなく、インターフェースを使って実装を切り替える
class NullLogger implements LoggerInterface {
  @override
  void log(String message) {
    // 何も出力しない
  }
}

// メッセージを出力するロガー
class Logger implements LoggerInterface {
  @override
  void log(String message) {
    print(message);
  }
}

void main() {
  // ログ出力が必要な場合とそうでない場合で、ロガーの実装を切り替える
  // 設定等を利用して、アプリ実行時に切り替えることで、条件分岐を排除する
  final shop = PetShop(NullLogger());
  final shop2 = PetShop(Logger());
}

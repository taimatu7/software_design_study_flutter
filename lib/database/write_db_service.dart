import 'dart:math';

import 'package:software_design_study_flutter/database/interfaces/data_input_interface.dart';

// 実際は、_dataInputInterfaceにDatabaseDriverクラスを渡す
// ※inputのみ必要
class WriteDBService {
  final DataInputInterface _dataInputInterface;

  WriteDBService(this._dataInputInterface);

  void write(dynamic data) {
    _dataInputInterface.write(Random().nextInt(100).toString(), data);
  }
}

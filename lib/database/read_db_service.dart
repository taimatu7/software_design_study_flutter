import 'package:software_design_study_flutter/database/interfaces/data_output_interface.dart';

// 実際は、_dataReadInterfaceにDatabaseDriverクラスのインスタンスを渡す
class ReadDBService {
  final DataOutputInterface _dataReadInterface;
  ReadDBService(this._dataReadInterface);

  String read(String key) {
    return _dataReadInterface.read(key);
  }
}

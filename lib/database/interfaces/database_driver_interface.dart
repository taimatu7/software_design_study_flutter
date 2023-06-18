import 'package:software_design_study_flutter/database/interfaces/data_input_interface.dart';
import 'package:software_design_study_flutter/database/interfaces/data_output_interface.dart';

// DBドライバーインターフェース
// ※データ入力インターフェースとデータ出力インターフェースをそれぞれ実装
abstract class DatabaseDriverInterface
    implements DataInputInterface, DataOutputInterface {}

import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestReportAction1 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final TestReport_Operation operation;
  final TestReport_Assert assert;
  const TestReportAction1({
    this.id,
    this.extension,
    this.modifierExtension,
    this.operation,
    this.assert,
  });
}

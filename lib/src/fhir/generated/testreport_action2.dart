import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestReportAction2 {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final TestReport_Operation operation;
  const TestReportAction2({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.operation,
  });
}

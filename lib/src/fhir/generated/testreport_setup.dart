import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestReportSetup {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<TestReportAction> action;
  const TestReportSetup({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.action,
  });
}

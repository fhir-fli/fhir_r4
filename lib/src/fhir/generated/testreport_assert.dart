import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestReportAssert {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode result;
  final PrimitiveElement Result;
  final FhirMarkdown message;
  final PrimitiveElement Message;
  final String detail;
  final PrimitiveElement Detail;
  const TestReportAssert({
    this.id,
    this.extension,
    this.modifierExtension,
    this.result,
    this.Result,
    this.message,
    this.Message,
    this.detail,
    this.Detail,
  });
}

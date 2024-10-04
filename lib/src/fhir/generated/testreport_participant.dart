import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestReportParticipant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirUri uri;
  final PrimitiveElement Uri;
  final String display;
  final PrimitiveElement Display;
  const TestReportParticipant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.uri,
    this.Uri,
    this.display,
    this.Display,
  });
}

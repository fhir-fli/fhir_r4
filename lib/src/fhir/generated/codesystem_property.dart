import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeSystemProperty {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirUri uri;
  final PrimitiveElement Uri;
  final String description;
  final PrimitiveElement Description;
  final FhirCode type;
  final PrimitiveElement Type;
  const CodeSystemProperty({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.uri,
    this.Uri,
    this.description,
    this.Description,
    this.type,
    this.Type,
  });
}

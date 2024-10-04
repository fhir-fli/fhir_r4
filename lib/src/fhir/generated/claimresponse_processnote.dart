import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponseProcessNote {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirPositiveInt number;
  final PrimitiveElement Number;
  final FhirCode type;
  final PrimitiveElement Type;
  final String text;
  final PrimitiveElement Text;
  final CodeableConcept language;
  const ClaimResponseProcessNote({
    this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.Number,
    this.type,
    this.Type,
    this.text,
    this.Text,
    this.language,
  });
}

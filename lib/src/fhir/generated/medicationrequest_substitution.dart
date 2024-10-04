import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationRequestSubstitution {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final bool allowedBoolean;
  final PrimitiveElement AllowedBoolean;
  final CodeableConcept allowedCodeableConcept;
  final CodeableConcept reason;
  const MedicationRequestSubstitution({
    this.id,
    this.extension,
    this.modifierExtension,
    this.allowedBoolean,
    this.AllowedBoolean,
    this.allowedCodeableConcept,
    this.reason,
  });
}

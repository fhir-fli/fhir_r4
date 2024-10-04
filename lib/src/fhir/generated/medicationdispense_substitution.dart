import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationDispenseSubstitution {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean wasSubstituted;
  final PrimitiveElement WasSubstituted;
  final CodeableConcept type;
  final List<CodeableConcept> reason;
  final List<Reference> responsibleParty;
  const MedicationDispenseSubstitution({
    this.id,
    this.extension,
    this.modifierExtension,
    this.wasSubstituted,
    this.WasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty,
  });
}

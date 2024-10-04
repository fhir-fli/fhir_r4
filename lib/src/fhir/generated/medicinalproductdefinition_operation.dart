import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinitionOperation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference type;
  final Period effectiveDate;
  final List<Reference> organization;
  final CodeableConcept confidentialityIndicator;
  const MedicinalProductDefinitionOperation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.effectiveDate,
    this.organization,
    this.confidentialityIndicator,
  });
}

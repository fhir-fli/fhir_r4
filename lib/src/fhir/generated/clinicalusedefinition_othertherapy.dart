import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinitionOtherTherapy {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept relationshipType;
  final CodeableReference therapy;
  const ClinicalUseDefinitionOtherTherapy({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.relationshipType,
    required this.therapy,
  });
}

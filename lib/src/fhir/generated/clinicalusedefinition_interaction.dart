import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteraction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<ClinicalUseDefinitionInteractant> interactant;
  final CodeableConcept type;
  final CodeableReference effect;
  final CodeableConcept incidence;
  final List<CodeableConcept> management;
  const ClinicalUseDefinitionInteraction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.interactant,
    this.type,
    this.effect,
    this.incidence,
    this.management,
  });
}

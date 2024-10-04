import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinitionUndesirableEffect {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference symptomConditionEffect;
  final CodeableConcept classification;
  final CodeableConcept frequencyOfOccurrence;
  const ClinicalUseDefinitionUndesirableEffect({
    this.id,
    this.extension,
    this.modifierExtension,
    this.symptomConditionEffect,
    this.classification,
    this.frequencyOfOccurrence,
  });
}
